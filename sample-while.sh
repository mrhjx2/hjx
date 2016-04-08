#!/bin/bash
#
#
#
#

#while read line
#do
#  echo $line
#done < cvsfile
#




#while [ 1 ]
#while ((1))
#while true
#while :
#do
#    echo 'yebumin'
#done
IFS=':'
while read f1 f2 f3 f4 f5 f6 f7
do
    echo "account: $f1, login Shell is =>: $f7"
done < "/etc/passwd"
