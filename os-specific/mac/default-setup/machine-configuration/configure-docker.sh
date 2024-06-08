#!/bin/bash

docker run --name mongo -d -p 27017:27017 mongo:4 --replSet local
docker run --name redis -d -p 6379:6379 redis:5