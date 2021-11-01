#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "THIS IS A TEST"
pwd
env

echo "::set-output name=time::$time"
