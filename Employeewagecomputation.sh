#/bin/bash -x
echo "Welcome to Employee wage computation"
#constant
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4
IS_PRESENT=1
empcheck=$((RANDOM%2+1))


if (( $empcheck == $IS_PRESENT )) 
then
        echo "Employee is present\n"
        
        checkingschedule=$((RANDOM%2+1))
        if(( $checkingschedule == 1 ))
         then
         calculateDailyEmployeewage=$(($WAGE_PER_HOUR*$FULL_DAY_HOUR))
         echo "Daily wages is : $calculateDailyEmployeewage \n"
fi
          if(( $checkingschedule == 2 ))
         then
         calculateparttime=$(($WAGE_PER_HOUR*$FULL_DAY_HOUR))
        echo "part time employee wage : $calculateparttime \n"
fi
else
        echo "Employee is absent\n"
fi

