#/bin/bash -x
echo "Welcome to Employee wage computation"
#constant
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4
IS_PRESENT=1
empcheck=$((RANDOM%3+1))

#using case statement
case $empcheck in
     1) 
             echo "Employee is present\n"
             calculateDailyEmployeewage=$(($WAGE_PER_HOUR*$FULL_DAY_HOUR))
             echo "Full time : $calculateDailyEmployeewage \n"
              ;;

      2)
            echo "Employee is present\n"
         calculateparttime=$(($WAGE_PER_HOUR*$FULL_DAY_HOUR))
        echo "part time employee wage : $calculateparttime \n"
          ;;     
      3) 
           echo "Employee is absent"
             ;;
esac

