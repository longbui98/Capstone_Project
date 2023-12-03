#!/user/bin/env/bash

cluster_name=hello-cluster
aws_region=us-east-2

if /.eksctl utils describe-stacks --region=${aws_region} --cluster=${cluster_name} | grep -q ${CLUSTER_NAME}; then
    echo "Cluster already exists!"
else
    echo "############### Creating Cluster ###############"
    /.eksctl create cluster -f cluster_deploy/eksctl-cluster.yaml
    echo "############### Node Details ###############"
    /.kubectl get nodes
fi