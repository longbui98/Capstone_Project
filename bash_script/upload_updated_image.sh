#!/user/bin/env/bash

export AWS_DEFAULT_REGION=us-east-2
export PROJECT_NAME=capstone-project

aws ecr get-login-password --region $AWS_DEFAULT_REGION | docker login --username AWS --password-stdin 717010040964.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com	

docker tag longbui-api:latest longbui-api-updated:lastest

docker push 717010040964.dkr.ecr.us-east-2.amazonaws.com/longbui-api-updated:lastest