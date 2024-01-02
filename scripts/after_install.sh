#!/bin/bash

echo "Logging in to Amazon ECR..."
aws ecr get-login-password --region us-west-1 | docker login --username AWS --password-stdin 047185742847.dkr.ecr.us-west-1.amazonaws.com
echo "Logged in to Amazon ECR successfully."

echo "Pulling image from Amazon ECR"
docker pull 047185742847.dkr.ecr.us-west-1.amazonaws.com/flask-image:latest
echo "Pulled image from Amazon ECR successfully."