#!/usr/bin/env bash

docker run \
    -d \
    -p 8080:8080 \
    -p 50000:50000 \
    -v "jenkins_home:/var/jenkins_home" \
    -v "$PWD/my_marvin.yml:/var/jenkins_home/my_marvin.yml" \
    --env CASC_JENKINS_CONFIG=/var/jenkins_home/my_marvin.yml \
    --env USER_CHOCOLATEEN_PASSWORD=a \
    --env USER_VAUGIE_G_PASSWORD=a \
    --env USER_I_DONT_KNOW_PASSWORD=a \
    --env USER_NASSO_PASSWORD=a \
    --name my_marvin \
    jenkins/jenkins:latest

docker logs -f my_marvin