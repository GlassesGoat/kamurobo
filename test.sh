#!/bin/bash
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
        echo 1 > /sys/class/gpio/gpio14/value
        echo 1 > /sys/class/gpio/gpio15/value
        echo 1 > /sys/class/gpio/gpio18/value
        echo 1 > /sys/class/gpio/gpio23/value
        sleep 1
        echo 0 > /sys/class/gpio/gpio14/value
        echo 0 > /sys/class/gpio/gpio15/value
        echo 0 > /sys/class/gpio/gpio18/value
        echo 0 > /sys/class/gpio/gpio23/value
        sleep 1
done
