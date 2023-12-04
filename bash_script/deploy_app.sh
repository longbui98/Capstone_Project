#!/user/bin/env/bash

# Check config
echo "############## Kubernet config ##############"
kubectl config view

# Get Nodes details
echo "############### Node details ###############"
kubectl get nodes

# Create the deployment and loadbalancer
echo "############### Deploy app ###############"
kubectl apply -f cluster_deploy/deployment.yml

# Get details for deployment
echo "############### Deploy, RS, SVC, Pod details ###############"
kubectl get deploy,rs,svc,pods
