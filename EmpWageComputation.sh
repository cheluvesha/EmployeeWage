#!/bin/bash -x
#UC1
isPresent=1;
randomCheck=$((RANDOM%2));
if [ $isPresent -eq $randomCheck ]
then
        echo "Employee is present"
else
        echo "Employee is absent"
fi

#UC2
isPresent=1;
randomCheck=$((RANDOM%2));
if [ $isPresent -eq $randomCheck ]
then
        empRatePerHr=20;
        empHrs=8;
        salary=$(($empHrs*$empRatePerHr));
else
        salary=0;
fi

#UC3
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomCheck=$((RANDOM%3));
if [ $isFullTime -eq $randomCheck ]
then
        empHrs=8;
elif [ $isPartTime -eq $randomCheck ]
then
        empHrs=4;
else
        salary=0;
fi
salary=$salary=$(($empHrs*$empRatePerHr));

#UC4
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$((RANDOM%3));
case $empCheck in
        $isFullTime)
                empHrs=8;
                        ;;
        $isPartTime)
                empHrs=4;
                        ;;
                *)
                empHrs=0;
                        ;;
esac
salary=$(($empHrs*$empRatePerHr));

#UC5
isparttime=1;
isfulltime=2;
totalsalary=0;
emprateperHr=20;
numworkingdays=20;
for (( day=1; day<=$numworkingdays; day++ ))
do
empcheck=$(( RANDOM%3 ))
        case $empcheck in
                $isfulltime)
                        empHrs=8
                                ;;
                $isparttime)
                        empHrs=4
                                ;;
                *)
                        empHrs=0
                                ;;
        esac
        salary=$(( $empHrs*$emprateperHr ));
        totalsalary=$(( $totalsalary+$salary ));
done
echo $salary
echo $totalsalary
#UC6
isparttime=1;
isfulltime=2;
max_Hrs_Mon=10;
emprateperHr=20;
numworkingdays=20;
totalEmpHr=0;
totalworkingdays=0;
while [[ $totalEmpHr -lt $max_Hrs_Mon &&
         $totalworkingdays -lt $numworkingdays ]]
do
  ((totalworkingdays++))
        empcheck=$(( RANDOM%3 ))
        case $empcheck in
                $isfulltime)
                        empHrs=8
                                ;;
                $isparttime)
                        empHrs=4
                                ;;
                *)
                        empHrs=0
                                ;;
        esac
        totalEmpHr=$(($totalEmpHr*$empHrs))
done
totalSalary=$(($totalEmpHr*$emprateperHr))

#UC7
isparttime=1;
isfulltime=2;
max_Hrs_Mon=10;
emprateperHr=20;
numworkingdays=20;
totalEmpHr=0;
totalworkingdays=0;
while [[ $totalEmpHr -lt $max_Hrs_Mon &&
         $totalworkingdays -lt $numworkingdays ]]
do
  ((totalworkingdays++))
        empcheck=$(( RANDOM%3 ))
        case $empcheck in
                $isfulltime)
                        empHrs=8
                                ;;
                $isparttime)
                        empHrs=4
                                ;;
                *)
                        empHrs=0
                                ;;
        esac
        totalEmpHr=$(($totalEmpHr*$empHrs))
done
totalSalary=$(($totalEmpHr*$emprateperHr))

#UC8
isparttime=1;
isfulltime=2;
max_Hrs_Mon=4;
emprateperHr=20;
numworkingdays=20;
totalEmpHr=0;
totalworkingdays=0;
function getworkinghrs() {
 case $1 in
                $isfulltime)
                        empHrs=8
                                ;;
                $isparttime)
                        empHrs=4
                                ;;
                *)
                        empHrs=0
                                ;;
        esac
}
function calDailywage() {
 local empHrs=$1;
 wage=$(($empHrs*$emprateperHr))
}
while [[ $totalworkingHrs -lt $max_Hrs_Mon && $totalworkingdays -lt $numworkingdays ]]
do
  ((totalworkingdays++))
        empHrs="$( getworkinghrs $((RANDOM%3)) )"
        totalworkingHrs=$(( $totalworkingHrs * $empHrs ))
        empwage[$totalworkingdays]+"$( calDailywage $empHrs )"
done
totalSalary=$(( calDailywage $totalworkingHrs ))
echo "Daily wage" ${empwage[@]}

#UC9
return_value=0
function get_working_hrs() {
        local emp_check=$1
        local full_time=1;
        local part_time=2;
        case $emp_check in
                $full_time)
                        return_value=8
                                        ;;
                $part_time)
                        return_value=4
                                        ;;
                *)
                        return_value=0
                                        ;;
        esac
    return
}
function get_emp_wage() {
        local working_hrs=$1;
        dailywage=$((working_hrs*rate_hor))

echo $dailywage
}
number_of_days=5
rate_hor=20
days=0
total_hrs=0
declare -A daily_salary
while [ $days -lt $number_of_days ]
do
        is_present=$((RANDOM%3))
        get_working_hrs $is_present
        working_hrs=$return_value
        total_hrs=$((total_hrs+working_hrs))
        daily_salary["day $days"]="$( get_emp_wage $working_hrs )"
        ((days++))
done
total_salary=$((total_hrs*rate_hor))
echo $total_salary
for i in "${!daily_salary[@]}"
do
        echo $i"-" ${daily_salary[$i]}
done


