#include <ros/ros.h>
#include "helloWorld/MinhaMensagem.h"

#include <iostream>
#include <string>

int main (int argc, char **argv){

ros::init(argc,argv, "publisherNode");

ros::NodeHandle _nh;

ros::Publisher topicoExemploRef = _nh.advertise<helloWorld::MinhaMensagem>("topicoExemplo",1);

helloWorld::MinhaMensagem mensagem;

mensagem.primeiroInteiro = 200;
mensagem.segundoInteiro.data = 300;
mensagem.texto = std::string("---Hello World--");

while(ros::ok()){
    topicoExemploRef.publish(mensagem);
    ros::spinOnce();
}

}