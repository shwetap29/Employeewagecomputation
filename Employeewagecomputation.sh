#/bin/bash -x
echo "Welcome to Employee wage computation"
#constant
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4
IS_PRESENT=1
NUMBER_OF_WORKING_DAYS=20
countfulltime=0
countparttime=0
countabsent=0
for(( day=1; day<= $NUMBER_OF_WORKING_DAYS ; day++ ))
do
      empcheck=$((RANDOM%3+1))

      #using case statement
       case $empcheck in
     1) 
             calculateDailyEmployeewage=$(($WAGE_PER_HOUR*$FULL_DAY_HOUR))
             countfulltime=$((countfulltime+1))
              ;;

      2)
              calculateparttime=$(($WAGE_PER_HOUR*$FULL_DAY_HOUR))
               countparttime=$((countparttime+1))
                ;;
      3) 
              countabsent=$((countabsent+1))
             ;;
  esac
done
echo "full time $countfulltime days employee wage :$(( calculateDailyEmployeewage*$countfulltime))"
echo "part time $countparttime days employee wage :$(( calculateDailyEmployeewage*$countparttime))"
echo "absent $countabsent days"
