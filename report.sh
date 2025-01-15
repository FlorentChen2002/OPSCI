#!/bin/bash

df -h  >> a.info 2>> a.error
cat /proc/meminfo  >> a.info 2>> a.error
cat /proc/cpuinfo >> a.info 2>> a.error
lspci -v -s ${01:00.0}>> a.info 2>> a.error

cd ~ ; ls -al>> /users/Etu3/21101813/system-report/b.info 2>> b.error
cd ~ & ls -al>> /users/Etu3/21101813/system-report/b.info 2>> b.error
cd ~ && ls -al>> /users/Etu3/21101813/system-report/b.info 2>> b.error
cd /users/Etu3/21101813/system-report
du -h --max-depth=1>> b.info 2>> b.error

quota>> b.info 2>> b.error
ps -aux | grep ^`whoami`>> c.info 2>> c.error
sleep 1664 &
PID=$!
kill -9 $PID>> c.info 2>> c.error

