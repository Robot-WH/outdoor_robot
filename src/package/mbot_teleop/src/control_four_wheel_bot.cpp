/**
 * 该例程将发布chatter话题，消息类型String
 */
 
#include <sstream>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/Pose.h"

int main(int argc, char **argv)
{
  // ROS节点初始化
  ros::init(argc, argv, "pose_publisher");
  
  // 创建节点句柄
  ros::NodeHandle n;
  
  // 创建一个Publisher，发布名为chatter的topic，消息类型为std_msgs::String
  //ros::Publisher pose_pub = n.advertise<geometry_msgs::Pose>("/cmd_vel", 50);
  ros::Publisher twist_pub = n.advertise<geometry_msgs::Twist>("/turtlebot_teleop/cmd_vel", 50);
  ros::Time current_time, last_time;
  current_time = ros::Time::now();
  last_time = ros::Time::now();
  // 设置循环的频率
  ros::Rate loop_rate(10);


  while (ros::ok())
  {
	// 循环等待回调函数，等待消息输入
    ros::spinOnce();
  // --------------------------------------------------------
    double dt = (current_time - last_time).toSec();
    /*
    geometry_msgs::Pose set_pose;
    set_pose.position.x = 1.0;
    set_pose.position.y = 1.0;
    pose_pub.publish(set_pose);
    */
    
    geometry_msgs::Twist set_twist;
    set_twist.linear.x = 1;
    set_twist.linear.y = 1;
    set_twist.linear.z = 1;
    set_twist.angular.x = 0;
    set_twist.angular.y = 0;
    set_twist.angular.z = 0.5;
    twist_pub.publish(set_twist);
  // --------------------------------------------------------
  // 更新时间
  last_time = current_time;
	// 按照循环频率延时
    loop_rate.sleep();
  }

  return 0;
}
