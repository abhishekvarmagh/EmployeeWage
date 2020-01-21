#! /bin/bash -x

WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
readNumber=$(( RANDOM%2 ))
if [ $readNumber -eq 1 ]
then
	echo "Present"
	dailyWage=$(( WAGE_PER_HOUR*FULL_DAY_HOUR ))
else
	echo "Absent"
	dailyWage=0
fi
echo "Employee Wage : "$dailyWage
