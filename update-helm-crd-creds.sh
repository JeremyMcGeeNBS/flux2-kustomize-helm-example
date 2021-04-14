#!/usr/bin/env bash

helm repo add fluxcd https://charts.fluxcd.io
helm upgrade -i helm-operator fluxcd/helm-operator \
    --namespace flux-system \
    --set configureRepositories.enable=true \
    --set 'configureRepositories.repositories[0].name=example' \
    --set 'configureRepositories.repositories[0].url=https://familymcgee.jfrog.com/fls-docker-repo' \
    --set 'configureRepositories.repositories[0].username=fls-user' \
    --set "configureRepositories.repositories[0].password=$REPO_PASS"