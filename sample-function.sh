#!/bin/bash
#2016-04-08
#
#
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
#
function showe()
{
    echo "hello, you are calling the function"
}
echo "first time call the function"
showe
echo "second time call the function"
showe
echo "--------------------"
#
function show() {
  echo "hello, you are calling the function $1"
}
echo "first time call the function"
show first
echo "second time call the function"
show second
echo "++++++++++++********************"
#
function abc()
{
    RESULT=`expr $1 \% 2`
    if [ $RESULT -ne 0 ] ; then
        return 0
    else
        return 1
    fi
}
echo "Please enter a number who can devide by 2"
read N
abc $N
case $? in
    0)
        echo "yes , it is "
        ;;
    1)
        echo "no , it isn't"
        ;;
esac
echo "++++++++++++"
# multinest
function first()
{
    function second()
    {
        function third()
        {
            echo "------this is third"
        }
        echo "------this is second"
        third
    }
    echo "------this is the first"
    second
}

echo "starting ......"
first
