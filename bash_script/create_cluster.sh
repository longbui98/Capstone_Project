#!/user/bin/env/bash

cluster_name=capstone-project
aws_region=us-east-2

if /.eksctl utils describe-stacks --region=${aws_region} --cluster=${cluster_name} | grep -q ${CLUSTER_NAME}; then
    echo "Cluster already exists!"
else
    echo "############### Creating Cluster ###############"
    /.eksctl create cluster --name ${cluster_name} --region=${aws_region}
    echo "Created Cluster Successfully!"
    echo "############### Node Details ###############"
    /.kubectl get nodes
fi