execute_process(COMMAND "/home/acatarinal/Treinamento-ROS/projeto2/parte1/catkin_ws/build/ros_controllers/rqt_joint_trajectory_controller/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/acatarinal/Treinamento-ROS/projeto2/parte1/catkin_ws/build/ros_controllers/rqt_joint_trajectory_controller/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
