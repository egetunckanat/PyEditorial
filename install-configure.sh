#!/bin/bash
 
docker ps > /dev/null;
dockerChecker=$(echo $?)

if (($dockerChecker == 0));then
    echo "Docker exists and running"
else
   echo "Please check Docker is installed and running"
   exit
    
fi
docker-compose version > /dev/null;
composeChecker=$(echo $?)

if (($composeChecker == 0)); then
   echo "docker-compose already exists"
else
   echo "Please check docker-compose is installed and running"
   exit
fi

cp env_sample .env > /dev/null;
docker-compose down;
docker-compose build;
docker-compose up -d;
echo "Installation and configuration finished."
