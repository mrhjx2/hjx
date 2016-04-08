#!/bin/bash
#2016-04-08
#
#
read yname
case $yname in
    Jack | John | Joe)
        echo 'Well...'
        echo "Long time no see."
        echo "How do you do ?"
        ;;
    (Marry | marry) 
        echo 'Nice to you';;
    C*)
        echo 'Long time to see.'
        ;;
    *)
        echo 'Hi!'
        ;;
esac
