#!/bin/bash -x
# Shell program to create birth month dictionary
month=(january february march april may june july august september october november december)
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
count7=0
count8=0
count9=0
count10=0
count11=0
count12=0
declare -A birthDictionary  #declaration of dictionary
for((person=1;person<=50;person++))
do
   birthMonth=$((RANDOM%12+1))
   #case statement
   case $birthMonth in
   1)
	((count1++))
      	birthDictionary[${month[0]}]=$count1
   ;;
   2)
      ((count2++))
      birthDictionary[${month[1]}]=$count2
   ;;
   3)
      ((count3++))
      birthDictionary[${month[2]}]=$count3
   ;;
   4)
      ((count4++))
      birthDictionary[${month[3]}]=$count4
   ;;
   5)
      ((count5++))
      birthDictionary[${month[4]}]=$count5
   ;;
   6)
      ((count6++))
      birthDictionary[${month[5]}]=$count6
   ;;
   7)
      ((count7++))
      birthDictionary[${month[6]}]=$count7
   ;;
   8)
      ((count8++))
      birthDictionary[${month[7]}]=$count8
   ;;
   9)
      ((count9++))
      birthDictionary[${month[8]}]=$count9
   ;;
   10)
      ((count10++))
      birthDictionary[${month[9]}]=$count10
   ;;
   11)
      ((count11++))
      birthDictionary[${month[10]}]=$count11
   ;;
   12)
      ((count12++))
      birthDictionary[${month[11]}]=$count12
   esac
done
echo " Birth dictionary is :"
echo "{"
for((iter=0;iter<=11;iter++))
do
   echo "[ ${month[$iter]} : ${birthDictionary[${month[$iter]}]} ],"
done
echo "}"
