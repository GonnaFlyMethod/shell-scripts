#!/bin/bash
while :
do
	response=$(redis-cli -h <redis_host> -p <redis_port> PING)
	if [ "$response" = "PONG" ]
	then
		notify-send "Redis is alive"
		break
	fi
	sleep 5
done

