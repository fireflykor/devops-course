#!/bin/bash

docker build -t  nginx_devops:homework .

docker run -d --name nginx-container \
              -p 8080:80 \
              --restart unless-stopped \
              nginx_devops:homework

