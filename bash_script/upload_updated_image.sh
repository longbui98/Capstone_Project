#!/user/bin/env/bash

export AWS_DEFAULT_REGION=us-east-2
export PROJECT_NAME=capstone-project


echo $DOCKER_TOKEN | docker login -u $DOCKER_USER --password-stdin

docker tag longbui-api longbui-api-updated:v1.0.0

docker push longtony/longbui-api-updated:v1.0.0