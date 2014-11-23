#!/bin/bash
if [ -z "$1" ] 
then
	echo "Error : Source-Range?"
elif [ -z "$2" ]
then
	echo "Target-IP ?"

elif [ -z "$3" ]
then
	echo "A(dd) or D(elete) ?"

else
	iptables -t nat -$3 PREROUTING -p tcp -d 5.199.136.249 --dport $1 -j DNAT --to-destination $2

fi

