#!/bin/bash
result=$( sudo docker images -q my-app:latest )
docker run -itd --name capstonecantainer -p 80:80 $result
CONTAINER_NAME='capstonecantainer'
x=$(docker ps -q -f status=running -f name=$capstonecantainer)
if [[ -n "$x" ]]; then
  echo 'Container exists'
else
  echo 'No container image'
fi
