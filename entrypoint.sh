#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "!!! ls -lah !!!"
ls -lah 
echo "!!! pwd !!!"
pwd
ech "!!! env !!!"
env

echo "::set-output name=time::$time"
