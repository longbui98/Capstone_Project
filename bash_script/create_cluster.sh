#!/user/bin/env/bash

cluster_name=capstone-project-cluster
aws_region=us-east-1

if /.eksctl utils describe-stacks --region=${aws_region} --cluster=${cluster_name} | grep -q ${CLUSTER_NAME}; then
    echo "Cluster already exists!"
else
    echo "############### Creating Cluster ###############"
    /.eksctl create cluster --name long-capstone-project --region us-east-1 --fargate
    echo "############### Node Details ###############"
    /.kubectl get nodes
fi