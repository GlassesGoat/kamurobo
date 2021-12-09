#!/bin/bash

while:
do
	echo 方向を入力してください
	read key
	if [ "$key" = "s" ]; then
		echo まっすぐ進む
	elif [ "$key" = "d" ]; then
		echo　右に回る
	elif [ "$key" = "a" ]; then
		echo　左に回る
	elif [ "$key" = "f" ]; then
	       	echo　バック
	elif [ "$key" = "" ]; then
		echo　停止処理
	fi
done

