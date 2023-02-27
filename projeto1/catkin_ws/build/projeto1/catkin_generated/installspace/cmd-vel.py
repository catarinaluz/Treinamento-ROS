#!/usr/bin/env python3
import rospy 
from geometry_msgs.msg import Twist

def move():
    rospy.init_node('cmd-vel', anonymous=True)
    velocity_publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
    vel_msg = Twist()

    speed = 10

    vel_msg.linear.x = 10

    vel_msg.linear.y = 0
    vel_msg.linear.z = 0
    vel_msg.angular.x = 0
    vel_msg.angular.y = 0
    vel_msg.angular.z = 0

    while not rospy.is_shutdown():
        t0 = rospy.Time.now().to_sec()
        current_time = 0
        while(current_time<3):
            velocity_publisher.publish(vel_msg)
            t1 = rosý.Time.now().to_sec()
            current_time = t1-t0

        vel_msg.linear.x=0
        velocity_publisher.publish(vel_msg)
    

if __name__ == '__main__':
    try:
        move()
    except rospy.ROSInterruptException: pass