#!/bin/bash

#tar zxvf mysql.tar.gz
#chmod 777 -R mysql
#sudo docker run -t -i -d -p 3000:3000 --name webistrano  -v ~/webistrano/mysql/:/mnt/mysql/ martonowibowo/ubuntu:webistrano sh /root/screen.sh
sudo docker run -t -i -d -p 3000:3000 --name webistrano  -v ~/webistrano/mysql/:/mnt/mysql/ martonowibowo/ubuntu:webistrano
printf "Starting Webistrano.........!!!\n"
sudo docker exec webistrano sh /root/screen.sh
printf "Webistrano is Running.........!!!(http://localhost:3000/)\n\n"
printf "SSH-KEY /root/id_rsa.pub\n"
sudo docker exec webistrano cat /root/.ssh/id_rsa.pub
printf "\nSSH-KEY /root/id_rsa\n"
sudo docker exec webistrano cat /root/.ssh/id_rsa
