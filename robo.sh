#!/bin/bash

#a1=15
#a2=14
#b1=18
#b2=23

echo 14 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio14/direction
echo 15 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio15/direction
echo 18 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio18/direction
echo 23 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio23/direction

while :
do
	echo 方向を入力してください
	read key

	if [ "$key" = "s" ]; then
		echo まっすぐ進む
		echo 1 > /sys/class/gpio/gpio14/value
    		echo 0 > /sys/class/gpio/gpio15/value
    		echo 1 > /sys/class/gpio/gpio18/value
    		echo 0 > /sys/class/gpio/gpio23/value 
    
	elif [ "$key" = "d" ]; then
		echo　右に旋回
    		echo 0 > /sys/class/gpio/gpio14/value
    		echo 1 > /sys/class/gpio/gpio15/value
    		echo 1 > /sys/class/gpio/gpio18/value
    		echo 0 > /sys/class/gpio/gpio23/value
    
	elif [ "$key" = "a" ]; then
		echo　左に旋回
    		echo 1 > /sys/class/gpio/gpio14/value
    		echo 0 > /sys/class/gpio/gpio15/value
    		echo 0 > /sys/class/gpio/gpio18/value
    		echo 1 > /sys/class/gpio/gpio23/value
    
	elif [ "$key" = "f" ]; then
		echo　バック
	  	echo 0 > /sys/class/gpio/gpio14/value
		echo 1 > /sys/class/gpio/gpio15/value
	  	echo 0 > /sys/class/gpio/gpio18/value
	  	echo 1 > /sys/class/gpio/gpio23/value
    
	elif [ "$key" = "" ]; then
		echo　停止処理
		echo 0 > /sys/class/gpio/gpio14/value
		echo 0 > /sys/class/gpio/gpio15/value
		echo 0 > /sys/class/gpio/gpio18/value
		echo 0 > /sys/class/gpio/gpio23/value
    
	fi
done
