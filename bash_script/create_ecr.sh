#!/user/bin/env/bash

export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY

aws ecr get-login-password --region $AWS_DEFAULT_REGION | docker login --username AWS --password-stdin 717010040964.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com

aws ecr create-repository \
    --repository-name $PROJECT_NAME \
    --region $AWS_DEFAULT_REGION	

docker push 717010040964.dkr.ecr.us-east-1.amazonaws.com/longbui-api:latest