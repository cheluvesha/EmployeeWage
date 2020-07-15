#!/bin/bash 
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



