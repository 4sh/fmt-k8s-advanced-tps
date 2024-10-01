#!/bin/bash

docker build . -t europe-west1-docker.pkg.dev/quatreapp/qsh-public/failing:1.0
docker push europe-west1-docker.pkg.dev/quatreapp/qsh-public/failing:1.0