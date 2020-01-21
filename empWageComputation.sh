#! /bin/bash -x

WAGE_PER_HOUR=20
FULL_TIME_HOUR=8
PART_TIME_HOUR=4
readNumber=$(( RANDOM%2 ))
if [ $readNumber -eq 1 ]
then
	echo "Present"
	case $(( RANDOM%2 )) in
		1)
			dailyWage=$(( FULL_TIME_HOUR*WAGE_PER_HOUR ))
			;;
		0)
			dailyWage=$(( PART_TIME_HOUR*WAGE_PER_HOUR ))
			;;
	esac
else
	echo "Absent"
	dailyWage=0
fi
echo "Employee Wage : " $dailyWage
