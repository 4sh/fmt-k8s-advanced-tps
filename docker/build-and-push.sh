#!/bin/bash

docker build . -t europe-west9-docker.pkg.dev/qsh-learning/k8s-advanced/failing:1.0
docker push europe-west9-docker.pkg.dev/qsh-learning/k8s-advanced/failing:1.0