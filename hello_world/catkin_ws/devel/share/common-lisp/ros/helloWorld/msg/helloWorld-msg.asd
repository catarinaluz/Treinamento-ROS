
(cl:in-package :asdf)

(defsystem "helloWorld-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MinhaMensagem" :depends-on ("_package_MinhaMensagem"))
    (:file "_package_MinhaMensagem" :depends-on ("_package"))
  ))