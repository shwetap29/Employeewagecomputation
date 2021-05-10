#/bin/bash -x
echo "Welcome to Employee wage computation"
#constant
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4
IS_PRESENT=1
#empcheck=$((RANDOM%3+1))
NUMBEROFWORKINGDAYS=20
countFullTime=0
countPartTime=0
countNotPresent=0
for(( day=1; day <= $NUMBEROFWORKINGDAYS ; day++ ))
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4
NUMBER_OF_HOUR=100
NUMBER_OF_DAYS=20
#variable
numberOfDays=20
totalWorkingDays=0
totalEmpHrs=0
#calculate wages till a condition
#case $empcheck in
while(( $NUMBER_OF_HOUR > $totalEmpHrs  && $NUMBER_OF_DAYS > $totalWorkingDays  ))
do
	totalWorkingDays=$((totalWorkingDays+1))
	empcheck=$((RANDOM%3+1))
	#Using case statement
	case $random in
		1)
			calculateDailyEmployeewage=$(( WAGE_PER_HOUR * FULLDAYHOUR ))				#Calcute full time
			countFullTime=$((countFullTime+1))
			empHrs=8						 #Calcute full time
			;;

		2)
			calculatePartTime=$((WAGE_PER_HOUR * PARTTIMEHOUR ))						 #Calculate part time
			countPartTime=$((countPartTime+1))
			empHrs=4						 #Calculate part time
			;;

		3)
			countNotPresent=$((countNotPresent+1))
			empHrs=0
			;;
	esac
done
echo "Full time $countFullTime days employee wage :$(( calculateDailyEmployeewage*$countFullTime ))"
echo "Part time $countPartTime days employee wage :$(( calculatePartTime*$countPartTime ))"
echo "Not present $countNotPresent days"

totalEmpHrs=$(($totalEmpHrs+$empHrs))	# Total employee hour
done
totalSalary=$(($totalEmpHrs*$numberOfDays))
echo "Total Salary is :$totalSalary"
