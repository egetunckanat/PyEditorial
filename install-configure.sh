#!/bin/bash

git origin add 

serviceName1="docker"

if systemctl --all --type service | grep -q "$serviceName1";then
    echo "$serviceName1 exists."
else
    apt install docker -y
fi

serviceName2="docker-compose"

if systemctl --all --type service | grep -q "$serviceName2";then
    echo "$serviceName2 exists."
else
    apt install docker-compose -y
fi

mv env_sample .env; 

docker-compose down; exit 0;

docker-compose build;

docker-compose up -d;
