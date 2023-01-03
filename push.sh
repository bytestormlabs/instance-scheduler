#!/bin/bash
aws ecr get-login-password --region us-east-1 --profile bytestorm | docker login --username AWS --password-stdin 163788863765.dkr.ecr.us-east-1.amazonaws.com
docker build -t stop-db-cluster .
docker tag stop-db-cluster:latest 163788863765.dkr.ecr.us-east-1.amazonaws.com/stop-db-cluster:latest
docker push 163788863765.dkr.ecr.us-east-1.amazonaws.com/stop-db-cluster:latest
