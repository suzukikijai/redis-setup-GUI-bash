#!/bin/bash
szUrl=$(zenity --password --width=560)
echo $szUrl| sudo -S apt-get update
sleep 10
echo $szUrl | sudo -S apt-get install build-essential
sleep 10
echo $szUrl | sudo -S apt-get install tcl8.5
sleep 5
wget http://download.redis.io/releases/redis-stable.tar.gz
sleep 3
tar xzf redis-stable.tar.gz
sleep 3
cd redis-stable
make
sleep 3
make test
sleep 3
echo $szUrl | sudo -S make install
sleep 3
cd utils
echo $szUrl | sudo -S ./install_server.sh
sleep 3
echo $szUrl | sudo -S update-rc.d redis_6379 defaults

