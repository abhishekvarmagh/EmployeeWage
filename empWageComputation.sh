#! /bin/bash -x

readNumber=$(( RANDOM%2 ))
if [ $readNumber -eq 1 ]
then
	echo "Present"
else
	echo "Absent"
fi
