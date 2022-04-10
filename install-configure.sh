#!/bin/bash
 
docker ps;
dockerChecker=$(echo $?)

if (($dockerChecker == 0));then
    echo "Docker exists and running"
else
   echo "Pelase check Docker is installed and running"
   exit
    
fi

if ![ -x "$(command -v docker)" ]; then
   echo "Pelase check docker-compose is installed and running"
   exit
else
   echo "docker-compose is installed"
fi

mv env_sample .env; 

docker-compose down; exit 0;

docker-compose build;

docker-compose up -d;
