;; Auto-generated. Do not edit!


(when (boundp 'hello-world::MinhaMensagem)
  (if (not (find-package "HELLO-WORLD"))
    (make-package "HELLO-WORLD"))
  (shadow 'MinhaMensagem (find-package "HELLO-WORLD")))
(unless (find-package "HELLO-WORLD::MINHAMENSAGEM")
  (make-package "HELLO-WORLD::MINHAMENSAGEM"))

(in-package "ROS")
;;//! \htmlinclude MinhaMensagem.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hello-world::MinhaMensagem
  :super ros::object
  :slots (_primeiroInteiro _segundoInteiro _texto ))

(defmethod hello-world::MinhaMensagem
  (:init
   (&key
    ((:primeiroInteiro __primeiroInteiro) 0)
    ((:segundoInteiro __segundoInteiro) (instance std_msgs::Int32 :init))
    ((:texto __texto) "")
    )
   (send-super :init)
   (setq _primeiroInteiro (round __primeiroInteiro))
   (setq _segundoInteiro __segundoInteiro)
   (setq _texto (string __texto))
   self)
  (:primeiroInteiro
   (&optional __primeiroInteiro)
   (if __primeiroInteiro (setq _primeiroInteiro __primeiroInteiro)) _primeiroInteiro)
  (:segundoInteiro
   (&rest __segundoInteiro)
   (if (keywordp (car __segundoInteiro))
       (send* _segundoInteiro __segundoInteiro)
     (progn
       (if __segundoInteiro (setq _segundoInteiro (car __segundoInteiro)))
       _segundoInteiro)))
  (:texto
   (&optional __texto)
   (if __texto (setq _texto __texto)) _texto)
  (:serialization-length
   ()
   (+
    ;; int32 _primeiroInteiro
    4
    ;; std_msgs/Int32 _segundoInteiro
    (send _segundoInteiro :serialization-length)
    ;; string _texto
    4 (length _texto)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _primeiroInteiro
       (write-long _primeiroInteiro s)
     ;; std_msgs/Int32 _segundoInteiro
       (send _segundoInteiro :serialize s)
     ;; string _texto
       (write-long (length _texto) s) (princ _texto s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _primeiroInteiro
     (setq _primeiroInteiro (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_msgs/Int32 _segundoInteiro
     (send _segundoInteiro :deserialize buf ptr-) (incf ptr- (send _segundoInteiro :serialization-length))
   ;; string _texto
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _texto (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get hello-world::MinhaMensagem :md5sum-) "80fc205c8bdb1be64b2141852ee2a48c")
(setf (get hello-world::MinhaMensagem :datatype-) "hello-world/MinhaMensagem")
(setf (get hello-world::MinhaMensagem :definition-)
      "#Mensagem de teste para o Tutorial de ROS do Toschi
#O objetivo da vida (e dessa mensagem) é ser feliz

int32 primeiroInteiro
#Inteiro de tipo primitivo

std_msgs/Int32 segundoInteiro
#Inteiro usando uma mensagem pré-pronta

string texto
#Texto de tipo primitivo


================================================================================
MSG: std_msgs/Int32
int32 data
")



(provide :hello-world/MinhaMensagem "80fc205c8bdb1be64b2141852ee2a48c")


