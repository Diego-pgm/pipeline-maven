#!/bin/bash

echo "*********************"
echo "**** Testing jar ****"
echo "*********************"

WORKSPACE=/var/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:latest "$@"
