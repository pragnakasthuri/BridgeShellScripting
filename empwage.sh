
#!/bin/bash
isPartTime=1;
isFullTime=2;
empSalPerHr=100;
workingDays=22;

calculateSalary (){
    # printStatement $1
    # printStatement $2
    newSalary=$(($1*$2))
#                8 * 100
    echo $newSalary
}

for (( day=1; day<=$workingDays; day++ ))
#       4        4<= 22           3++
do
empCheck=$((RANDOM%3));
   # 2
  case $empCheck in
  #      2
  $isPartTime)
  empHrs=4;;
  $isFullTime)
  empHrs=8;;
  *)
  empHrs=0;;
  esac
  calculateSalary $empHrs $empSalPerHr;
  totSalary=$(($totSalary+$newSalary));
#  2400
done;

#============================================


function calculateWorkingHour() {
	case $1 in
		0)
			workingHour=0;
			;;

		1)
			workingHour=8;
			;;
		2)
			workingHour=4;
			;;
                *)  
                        workingHour=0;
	esac;
	echo $workingHour;
}

perHourSalary=20;
totalSalary=0;
totalWorkingHour=0;
day=1;

while [[ $day -le 20 && $totalWorkingHour -lt 40 ]]
do
	wHour=$(calculateWorkingHour $((RANDOM%3)));
	totalWorkingHour=$(($totalWorkingHour + $wHour));
	if [ $totalWorkingHour -gt 40 ]
	then
		totalWorkingHour=$(($totalWorkingHour - $wHour));
		break;
	fi
	salary=$(($perHourSalary * $wHour));
	totalSalary=$(($totalSalary + $salary));
	((day++));
done
echo "Employee has earned $totalSalary $ in a month (Total working Hour : $totalWorkingHour)";
empWage.sh
Displaying empWage.sh.
