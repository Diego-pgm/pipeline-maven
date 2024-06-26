#!/bin/bash

echo "*****************************"
echo "****** Pushing image ********"
echo "*****************************"


IMAGE="maven-project"

echo "** Logging in **"
docker login -u diegopgm23 -p $PASS
echo "** Tagging image **"
docker tag $IMAGE:$BUILD_TAG diegopgm23/$IMAGE:$BUILD_TAG
echo "** Pushing image **"
docker push diegopgm23/$IMAGE:$BUILD_TAG

