#! /bin/bash -x
echo "Welcome to Employee wage computation"

#constant
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
#PART_TIME_HOUR=4
NUMBER_OF_HOUR=100
NUMBER_OF_DAYS=20
IS_PRESENT=1

#VARIABLE
empcheck=$(( RANDOM%2 ))
numberofdays=20
totalworkingdays=0
totalEmpHrs=0
day=1

#checking if employee is present or absent

if [ $empcheck -eq $IS_PRESENT ]
then
        echo "Employee is present"
else
        echo "Employee is absent"
fi
