#!/bin/bash
#author
#time
#programming

function mytest3()
{
    grep "123" test.txt | awk -F: '{print $2}' | while read line ;do
    echo "$line"
    if [ $line = "yxb" ] ; then
        return 0
    fi
done
echo "mytest3 here"
return 1

}

g_var=7

function mytest4()
{
    grep "123" test.txt | awk -F: '{print $2}' | while read line ;do
    echo "$line"
    if [ $line = "yxb" ] ; then
        g_var=0
        echo "g_var=0"
        return 0
    fi
done
echo "mytest4 here"
return 1
}

mytest3
echo $?

mytest4
echo "g_var=$g_var"

echo "***************************end"

## echo return value

function mytest5()
{
    grep "123" test.txt | awk -F: '{print $2}' | while read line ;do
    if [ $line = "yxb" ] ; then
        echo "0"
        return 0
    fi
done
return 1

}

result=$(mytest5)

if [ -z $result ] ; then
    echo "no yxb . result is empyt"
else
    echo "have yxb , result is $result"
fi
echo "+++++++++++++++++"
#
#
Dir=/home/xiong/ownself
function display()
{
    files=$(ls $Dir)
    echo $files
}

echo `$display`

function filetype()
{
    echo $(file $Dir/$1)
}

for file in $(display)
do
    filetype $file
done

# $? take return'value and $(function name) get echo'value of function
