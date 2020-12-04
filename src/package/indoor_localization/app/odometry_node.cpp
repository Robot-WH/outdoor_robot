// Copyright (C) 2018 Dongsheng Yang <ydsf16@buaa.edu.cn>
//(Biologically Inspired Mobile Robot Laboratory, Robotics Institute, Beihang University)

#include <iostream>
#include <ros/ros.h>
#include <geometry_msgs/QuaternionStamped.h>
#include <nav_msgs/Odometry.h>
#include <tf/transform_broadcaster.h>
#include <fstream>

#include "dashan_msg/wheelSpeed.h"

// global variable
#define PI 3.1415926
ros::Publisher g_odom_pub;
boost::shared_ptr<tf::TransformBroadcaster> odom_broadcaster;
double g_kl=0.145, g_kr=0.145, g_b=0.415;

void odometryCallback(dashan_msg::wheelSpeed const& encoder);

int main(int argc, char **argv)
{
    // init ros
    ros::init(argc, argv, "odometry");
    ros::NodeHandle nh;

    /*TODO default parameters*/
//    nh.getParam("/robot/kl", g_kl);
//    nh.getParam("/robot/kr", g_kr);
//    nh.getParam("/robot/b", g_b);

    odom_broadcaster.reset(new tf::TransformBroadcaster());
    ros::Subscriber sub = nh.subscribe("/wheel_speed", 1000, odometryCallback);
    g_odom_pub = nh.advertise<nav_msgs::Odometry>("/odom", 1000);

    ros::spin();
    return 1;
}

// 两轮差速模型 
void odometryCallback(dashan_msg::wheelSpeed const &encoder)
{
    // TODO 参数需要更在标定后做更精细的修正
    //const double KL = g_kl; //m/tick
    //const double KR = g_kr; //m/tick
    const double B = g_b;   //width

    static double pre_time = 0.0;
    static double x = 0.0, y = 0.0, theta = 0.0; // pose of robot
    static double pre_en_l1 = 0, pre_en_l2 = 0, pre_en_r1 = 0, pre_en_r2 = 0;

    // 读取四个编码器的值，四个编码器的值是存储在一个四元数里的
    double en_l1 = encoder.leftwheel_speed; // unit:  角度/弧度
    double en_l2 = encoder.leftwheel_speed;
    double en_r1 = encoder.rightwheel_speed;
    double en_r2 = encoder.rightwheel_speed;

    //读取时间戳
    double cur_time = encoder.header.stamp.toSec();
    double delta_t = 0.0; //以秒为单位
    if (pre_time == 0.0)            //处理第一帧数据
    {
        pre_time = cur_time;
        pre_en_l1 = en_l1;
        pre_en_l2 = en_l2;
        pre_en_r1 = en_r1;
        pre_en_r2 = en_r2;
    }
    else
    {
        // read deltas
        delta_t = cur_time - pre_time;
        pre_time = cur_time;

        double delta_en_l1 = en_l1*delta_t;
        double delta_en_l2 = en_l2*delta_t;
        double delta_en_r1 = en_r1*delta_t;
        double delta_en_r2 = en_r2*delta_t;
        // 求均值
        double delta_en_l = (delta_en_l1 + delta_en_l2) * 0.5;
        double delta_en_r = (delta_en_r1 + delta_en_r2) * 0.5;

        //cal odometry   计算里程计     即求解里程计的增量 !!!!!!!!!!!!!
        //double delta_theta = (KR * delta_en_r - KL * delta_en_l) / B;
        double delta_theta = 0.75 * (delta_en_r - delta_en_l) / (2 * B);
        //double delta_s = 0.5 * (KR * delta_en_r + KL * delta_en_l);
        double delta_s = 0.5 * (delta_en_r + delta_en_l);
        double delta_x = delta_s * cos(theta + 0.5 * delta_theta);
        double delta_y = delta_s * sin(theta + 0.5 * delta_theta);
        // update
        x = x + delta_x;
        y = y + delta_y;
        theta = theta + delta_theta;

        // 修正角度
        if (theta > PI)
            theta -= 2 * PI;
        else if (theta < -PI)
            theta += 2 * PI;

        double vx = delta_x / delta_t;
        double vy = delta_y / delta_t;
        double omega = delta_theta / delta_t;

        // since all odometry is 6DOF we'll need a quaternion created from yaw
        geometry_msgs::Quaternion odom_quat = tf::createQuaternionMsgFromYaw(theta);

        // first, we'll publish the transform over tf
        geometry_msgs::TransformStamped odom_trans;
        odom_trans.header.stamp = ros::Time::now();
        odom_trans.header.frame_id = "odom";
        odom_trans.child_frame_id = "base_link";

        odom_trans.transform.translation.x = x;
        odom_trans.transform.translation.y = y;
        odom_trans.transform.translation.z = 0.0;
        odom_trans.transform.rotation = odom_quat;

        //send the transform
        odom_broadcaster->sendTransform(odom_trans);

        //publish odometry
        nav_msgs::Odometry odom;
        odom.header.stamp = ros::Time::now();
        odom.header.frame_id = "odom";
        odom.child_frame_id = "base_link";

        odom.pose.pose.position.x = x;
        odom.pose.pose.position.y = y;
        odom.pose.pose.orientation = odom_quat; // 由yaw角度转换的四元数

        odom.twist.twist.angular.z = omega;
        odom.twist.twist.linear.x = vx;
        odom.twist.twist.linear.y = vy;

        g_odom_pub.publish(odom);
        
} //
}  //
