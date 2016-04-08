#!/bin/bash
#2016-04-08
#
#
#$IFS
for i in 1 2 3 4 
do
    echo $i
done
echo "************************"
IFS=':'
PL=$(cat /etc/passwd | grep -i xiong)
echo $PL
for d in $PL
do
    echo $d
done

# take CSV file colum
declare -i i=0

for line in $(cat CVSfile.txt)
do
    i=i+1
    echo -n "the $i line column is"
    save_ifs=$IFS
    IFS=','
    for f in $line
    do
        echo -n $f ''
    done
    IFS=$save_ifs
    echo
done
#for loop manage directory' file 

DIR="~"
for p in $(ls $DIR)
do
    echo 'file:' $p
done

#++++++++++++++++++
DIR="/var"
cd $DIR
for f in $(ls $DIR)
do
    [ -d $f ] && du -sh $f
done
#++++++++
echo "for loop another useing"
declare -i i sum
for ((i=1; i<=10; i=i+1))
do
    let sum+=i
done

echo $sum


