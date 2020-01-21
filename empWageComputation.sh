#! /bin/bash -x

WAGE_PER_HOUR=20
FULL_TIME_HOUR=8
PART_TIME_HOUR=4
DAY_PER_MONTH=20
dailyWage=0
for (( i=1; i<=DAY_PER_MONTH; i++))
do
	readNumber=$(( RANDOM%2 ))
	if [ $readNumber -eq 1 ]
	then
		case $(( RANDOM%2 )) in
			1)
				dailyWage=$(( dailyWage+(FULL_TIME_HOUR*WAGE_PER_HOUR) ))
				;;
			0)
				dailyWage=$(( dailyWage+(PART_TIME_HOUR*WAGE_PER_HOUR) ))
				;;
		esac
	else
		dailyWage=$(( dailyWage+0 ))
	fi
done
echo "Employee Wage : " $dailyWage
