#!/user/bin/env/bash

export AWS_DEFAULT_REGION=us-east-2
export PROJECT_NAME=capstone-project

aws ecr get-login-password --region $AWS_DEFAULT_REGION | docker login --username AWS --password-stdin 717010040964.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com

aws ecr create-repository \
    --repository-name $PROJECT_NAME \
    --region $AWS_DEFAULT_REGION	

docker tag longbui-api:latest 717010040964.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$PROJECT_NAME

docker push 717010040964.dkr.ecr.us-east-2.amazonaws.com/$PROJECT_NAME