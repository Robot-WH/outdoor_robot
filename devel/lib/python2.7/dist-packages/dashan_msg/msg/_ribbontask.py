# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dashan_msg/ribbontask.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ribbontask(genpy.Message):
  _md5sum = "5baa3f4faea623af8de2b30e03625db3"
  _type = "dashan_msg/ribbontask"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """#req task 1; release task 2
uint8 cmd
#senderip
string senderip
#from dc or pda
uint8 from
#task uuid
string taskid
#route id
int32 routeid
#pointid of task 
int32[] pointid
uint8 size
"""
  __slots__ = ['cmd','senderip','from_','taskid','routeid','pointid','size']
  _slot_types = ['uint8','string','uint8','string','int32','int32[]','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cmd,senderip,from_,taskid,routeid,pointid,size

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ribbontask, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.cmd is None:
        self.cmd = 0
      if self.senderip is None:
        self.senderip = ''
      if self.from_ is None:
        self.from_ = 0
      if self.taskid is None:
        self.taskid = ''
      if self.routeid is None:
        self.routeid = 0
      if self.pointid is None:
        self.pointid = []
      if self.size is None:
        self.size = 0
    else:
      self.cmd = 0
      self.senderip = ''
      self.from_ = 0
      self.taskid = ''
      self.routeid = 0
      self.pointid = []
      self.size = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_get_struct_B().pack(self.cmd))
      _x = self.senderip
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_B().pack(self.from_))
      _x = self.taskid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.routeid))
      length = len(self.pointid)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.pointid))
      buff.write(_get_struct_B().pack(self.size))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 1
      (self.cmd,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.senderip = str[start:end].decode('utf-8')
      else:
        self.senderip = str[start:end]
      start = end
      end += 1
      (self.from_,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.taskid = str[start:end].decode('utf-8')
      else:
        self.taskid = str[start:end]
      start = end
      end += 4
      (self.routeid,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.pointid = struct.unpack(pattern, str[start:end])
      start = end
      end += 1
      (self.size,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_get_struct_B().pack(self.cmd))
      _x = self.senderip
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_B().pack(self.from_))
      _x = self.taskid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.routeid))
      length = len(self.pointid)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.pointid.tostring())
      buff.write(_get_struct_B().pack(self.size))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 1
      (self.cmd,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.senderip = str[start:end].decode('utf-8')
      else:
        self.senderip = str[start:end]
      start = end
      end += 1
      (self.from_,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.taskid = str[start:end].decode('utf-8')
      else:
        self.taskid = str[start:end]
      start = end
      end += 4
      (self.routeid,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.pointid = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 1
      (self.size,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
