#!/bin/sh -l

echo "Hello $1"
time=$(date)
apk add curl kubectl
docker run --rm alpine sh -c "apk add --no-cache curl; curl https://binary.mirantis.com"

echo "::set-output name=time::$time"
