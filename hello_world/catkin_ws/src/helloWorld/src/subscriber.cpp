#include "ros/ros.h"
#include "helloWorld/MinhaMensagem.h"

#include <iostream>
#include <string>

void subscriberCallback(const helloWorld::MinhaMensagem::ConstPtr& msg){

    std::cout << "[subscriberNode] primeiroInteiro: " <<
msg->primeiroInteiro

<< ", segundoInteiro: " << msg->segundoInteiro.data
<< ", texto: " << msg->texto
<< std::endl;

}

int main(int argc, char **argv){

    ros::init(argc,argv, "subscriberNode");
    ros::NodeHandle _nh;

    ros::Subscriber topicoExemploRef = _nh.subscribe("topicoExemplo",1, subscriberCallback);

    ros::spin();

}