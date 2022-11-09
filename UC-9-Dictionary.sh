#!/bin/bash.sh

function getEmpWage()
{
	echo $(($totalEmpHr*$empRatePerHr))
}

while [[ $totalEmpHr -lt $maxRateInMonth &&
        $totalWorkingDays -lt $numOfWorkingDays ]]
do
        ((totalWorkingDays++))
        getWorkHours
        totalEmpHr=$(($totalEmpHr+$empHrs))
        #aray line that provides you daily wage
        dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done


totalsalary=$(($totalEmpHr*$empRatePerHr))
echo $totalsalary
echo ${dailyWages[@]}
