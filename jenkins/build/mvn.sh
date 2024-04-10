#!/bin/bash

echo "**********************"
echo "**** Building jar ****"
echo "**********************"

WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -w /app -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ maven:latest "$@"
