#/bin/bash -x
echo "Welcome to Employee wage computation"
#constant
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4
NUMBER_OF_HOUR=100
NUMBER_OF_DAYS=20
#variable
numberOfDays=20
totalWorkingDays=0
totalEmpHrs=0
day=1
#Using function
function getWorkingHours()
{
	random=$1											#Using case statement
	case $random in
		1)
			empHrs=8						 #Calcute full time
			;;

		2)
			empHrs=4						 #Calculate part time
			;;

		3)      empHrs=0
			;;
	esac
echo "$empHrs"
}
#using function to calculate daily wages
function calcDailyWage()
{
local workingHrs=$1
wage=$(($workingHrs*$WAGE_PER_HOUR))
echo "$wage"
}   

#using loop until condition true
while(( $NUMBER_OF_HOUR > $totalEmpHrs  && $NUMBER_OF_DAYS > $totalWorkingDays ))
do
   totalWorkingDays=$((totalWorkingDays+1))
   empHrs="$( getWorkingHours $((RANDOM%3+1)) )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))	# Total employee hour
        empDailyWage[$totalWorkingDays]="$(calcDailyWage $empHrs)"
        day=$((day+1))
done
    totalSalary=$(($totalEmpHrs*$numberOfDays))
    echo "Total Salary is : ${empDailyWage[@]}"
#printing key
for day in ${!empDailyWage[@]}
do
    printf "$day : ${empDailyWage[$day]} \n"
done
