#!/bin/bash

sudo docker start webistrano
sudo docker exec webistrano screen -wipe
sudo docker exec webistrano sh /root/screen.sh
printf "Webistrano is Running.........!!!(http://localhost:3000/)\n\n"

