#!/usr/bin/sh

sudo chmod 777 /home/pi/nCube-dry-100/
cd /home/pi/nCube-dry-100
sudo chmod 777 *
python3 start.py
sleep 2
python3 exec_print.py &
sleep 2
python3 exec_buzzer.py &
sleep 2
python3 exec_res2.py &
sleep 2
python3 exec_res.py &
sleep 2
pm2 start thyme.js


