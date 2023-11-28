#!/user/bin/env/bash

export AWS_DEFAULT_REGION=us-east-2
export PROJECT_NAME=capstone-project

aws ecr get-login-password --region $AWS_DEFAULT_REGION | docker login --username AWS --password-stdin 717010040964.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com

aws ecr create-repository \
    --repository-name $PROJECT_NAME \
    --region $AWS_DEFAULT_REGION	

docker push 717010040964.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$PROJECT_NAME