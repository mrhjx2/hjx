#!/bin/bash
#author
#time
#programming
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

function mytest()
{
    echo "mytest function"
    echo "argc[1] = $1"
    if [ $1 = "1" ] ; then
        return 1
    else
        return 0
    fi

}
echo "mytest 1"
mytest 1
echo $?

echo "mytest 0"
mytest 0
echo $?

if mytest 1 ; then
    echo "mytest 1"
fi

if mytest 0 ; then
    echo "mytest 0"
fi

echo "end--------+===>>--"
 
# golbal var  default is local var
g_var=

function mytest2()
{
    echo "mytest2"
    echo "args $1"
    g_var=$1
    return=0

}

mytest2 1

echo "g_var=$g_var"

