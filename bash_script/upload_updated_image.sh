#!/user/bin/env/bash

export AWS_DEFAULT_REGION=us-east-1
export PROJECT_NAME=capstone-project

aws ecr get-login-password --region $AWS_DEFAULT_REGION | docker login --username AWS --password-stdin 717010040964.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com	

docker tag longbui-api:latest longbui-api-updated:lastest

docker tag longbui-api-updated:lastest 717010040964.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$PROJECT_NAME

docker push 717010040964.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$PROJECT_NAME