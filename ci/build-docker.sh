#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}"
[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="${docker_username}/"
docker build -f /backend/Dockerfile -t "${DockerRepo}simple-fortune-cookie-backend:latest" -t "${DockerRepo}simple-fortune-cookie-backend:1.0-$Tag" app/
docker build -f /frontend/Dockerfile -t "${DockerRepo}simple-fortune-cookie-frontend:latest" -t "${DockerRepo}simple-fortune-cookie-frontend:1.0-$Tag" app/