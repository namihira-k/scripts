#!/bin/bash

app_name=$1

sudo /etc/init.d/tomcat stop
sudo cp /usr/java/tomcat/default/webapps/${app_name}.war /usr/java/tomcat/default/webapps/${app_name}.war.old
sudo rm -r -f /usr/java/tomcat/default/webapps/${app_name}
sudo rm -r -f /usr/java/tomcat/default/webapps/${app_name}.war
sudo rm -r -f /usr/java/tomcat/default/work/Catalina/localhost/${app_name}
sudo cp -f /home/ec2-user/${app_name}.war /usr/java/tomcat/default/webapps/
sudo /etc/init.d/tomcat start
sudo tail -f /usr/java/tomcat/default/logs/catalina.out
