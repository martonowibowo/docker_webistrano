#!/bin/bash

tar zxvf mysql.tar.gz
chmod 777 -R mysql
sudo docker run -t -i -d -p 3000:3000 --name webistrano  -v ~/webistrano/mysql/:/mnt/mysql/ martonowibowo/ubuntu:webistrano sh /root/start.sh

