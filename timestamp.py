#!/usr/bin/env python
# coding=utf-8
#
#
#
import time

def timestamp_datetime(value):
    format = '%Y-%m-%d %H:%M:%S'

    value = time.localtime(value)

    dt = time.strftime(format, value)

    return dt

def datetime_timestamp(dt):
    time.strptime(dt, '%Y-%m-%d %H:%M:%S')

    s = time.mktime(time.strptime(dt, '%Y-%m-%d %H:%M:%S'))

    return int(s)

if __name__ == '__main__':
    d = datetime_timestamp('1991-03-14 16:03:02')
    print d

    s = timestamp_datetime(1415241254)
    print s
