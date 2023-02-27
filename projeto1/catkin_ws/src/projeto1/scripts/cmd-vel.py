#!/usr/bin/env python
import rospy 
from geometry_msgs.msg import Twist

def move():
    rospy.init_node('cmd-vel', anonymous=True)
    velocity_publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
    vel_msg = Twist()

    speed = input("Speed: ")

    vel_msg.linear.x = float(speed)

    vel_msg.linear.y = 0
    vel_msg.linear.z = 0
    vel_msg.angular.x = 0
    vel_msg.angular.y = 0
    vel_msg.angular.z = 0



    while not rospy.is_shutdown():

        t0 = rospy.get_time()
        current_time = 0
        while(current_time<3):
            vel_msg.linear.x = float(speed)
            velocity_publisher.publish(vel_msg)
            t1 = rospy.get_time()
            current_time = t1-t0
            print('ANDANDO')
            print('[TIME-A: ]',current_time)
            print('[SPEED-A: ]',vel_msg.linear.x)
        
        current_time = 0
        t2 = rospy.get_time()
        while(current_time<3):
            vel_msg.linear.x=0
            velocity_publisher.publish(vel_msg)
            t3 = rospy.get_time()
            current_time = t3-t2
        
            print('PARADO')
            print('[TIME-P: ]',current_time)
            print('[SPEED-P: ]',vel_msg.linear.x)

if __name__ == '__main__':
    try:
        move()
    except rospy.ROSInterruptException: pass