; Auto-generated. Do not edit!


(cl:in-package hello-world-msg)


;//! \htmlinclude MinhaMensagem.msg.html

(cl:defclass <MinhaMensagem> (roslisp-msg-protocol:ros-message)
  ((primeiroInteiro
    :reader primeiroInteiro
    :initarg :primeiroInteiro
    :type cl:integer
    :initform 0)
   (segundoInteiro
    :reader segundoInteiro
    :initarg :segundoInteiro
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (texto
    :reader texto
    :initarg :texto
    :type cl:string
    :initform ""))
)

(cl:defclass MinhaMensagem (<MinhaMensagem>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MinhaMensagem>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MinhaMensagem)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello-world-msg:<MinhaMensagem> is deprecated: use hello-world-msg:MinhaMensagem instead.")))

(cl:ensure-generic-function 'primeiroInteiro-val :lambda-list '(m))
(cl:defmethod primeiroInteiro-val ((m <MinhaMensagem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-world-msg:primeiroInteiro-val is deprecated.  Use hello-world-msg:primeiroInteiro instead.")
  (primeiroInteiro m))

(cl:ensure-generic-function 'segundoInteiro-val :lambda-list '(m))
(cl:defmethod segundoInteiro-val ((m <MinhaMensagem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-world-msg:segundoInteiro-val is deprecated.  Use hello-world-msg:segundoInteiro instead.")
  (segundoInteiro m))

(cl:ensure-generic-function 'texto-val :lambda-list '(m))
(cl:defmethod texto-val ((m <MinhaMensagem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-world-msg:texto-val is deprecated.  Use hello-world-msg:texto instead.")
  (texto m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MinhaMensagem>) ostream)
  "Serializes a message object of type '<MinhaMensagem>"
  (cl:let* ((signed (cl:slot-value msg 'primeiroInteiro)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'segundoInteiro) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'texto))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'texto))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MinhaMensagem>) istream)
  "Deserializes a message object of type '<MinhaMensagem>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'primeiroInteiro) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'segundoInteiro) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'texto) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'texto) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MinhaMensagem>)))
  "Returns string type for a message object of type '<MinhaMensagem>"
  "hello-world/MinhaMensagem")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MinhaMensagem)))
  "Returns string type for a message object of type 'MinhaMensagem"
  "hello-world/MinhaMensagem")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MinhaMensagem>)))
  "Returns md5sum for a message object of type '<MinhaMensagem>"
  "80fc205c8bdb1be64b2141852ee2a48c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MinhaMensagem)))
  "Returns md5sum for a message object of type 'MinhaMensagem"
  "80fc205c8bdb1be64b2141852ee2a48c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MinhaMensagem>)))
  "Returns full string definition for message of type '<MinhaMensagem>"
  (cl:format cl:nil "#Mensagem de teste para o Tutorial de ROS do Toschi~%#O objetivo da vida (e dessa mensagem) é ser feliz~%~%int32 primeiroInteiro~%#Inteiro de tipo primitivo~%~%std_msgs/Int32 segundoInteiro~%#Inteiro usando uma mensagem pré-pronta~%~%string texto~%#Texto de tipo primitivo~%~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MinhaMensagem)))
  "Returns full string definition for message of type 'MinhaMensagem"
  (cl:format cl:nil "#Mensagem de teste para o Tutorial de ROS do Toschi~%#O objetivo da vida (e dessa mensagem) é ser feliz~%~%int32 primeiroInteiro~%#Inteiro de tipo primitivo~%~%std_msgs/Int32 segundoInteiro~%#Inteiro usando uma mensagem pré-pronta~%~%string texto~%#Texto de tipo primitivo~%~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MinhaMensagem>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'segundoInteiro))
     4 (cl:length (cl:slot-value msg 'texto))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MinhaMensagem>))
  "Converts a ROS message object to a list"
  (cl:list 'MinhaMensagem
    (cl:cons ':primeiroInteiro (primeiroInteiro msg))
    (cl:cons ':segundoInteiro (segundoInteiro msg))
    (cl:cons ':texto (texto msg))
))
