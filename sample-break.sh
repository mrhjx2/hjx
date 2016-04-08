#!/bin/bash
#
#

#break
for ((i=1; i<=10; i++))
do
    if [ $i -eq 6 ]; then
        break
        echo $i
    fi
    echo $i
done

#continue
for ((i=1; i<=10; i++))
do
    if [ $i -eq 7 ]; then
        continue
    fi
    echo $i
done
