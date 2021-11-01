#!/bin/sh -l

echo "Hello $1"
time=$(date)

# test access
docker run --rm alpine sh -c "apk add --no-cache curl; curl https://binary.mirantis.com"

#get curl
apk update
apk add curl

#install kind
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
chmod +x ./kind
./kind create cluster
./kind get clusters

#write a bogus file outside of workdir
#echo "secrets" >> /usr/local/sensitive_data.txt

# usually for debugging
#sleep 100000

echo "::set-output name=time::$time"
