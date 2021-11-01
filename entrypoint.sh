#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "THIS IS A TEST"
echo "::set-output name=time::$time"
