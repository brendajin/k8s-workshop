#!/bin/bash
set -eux

docker build -t mydreams ./mydreams

docker run -p 8080:3000 -d mydreams

open http://localhost:8080

read -p 'Press <ENTER> to continue:' dummy

docker stop $(docker ps -q --filter ancestor=mydreams)