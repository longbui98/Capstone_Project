#!/user/bin/env/bash

# Create the deployment and loadbalancer
echo "Deploy updated app:"
kubectl set image deployments/server  back-end=longbui-api-updated:v1.0.0

# Get details for loadbalancer
echo "Loadbalancer details:"
kubectl get service/loadbalancer-service

# Get details for deployment
echo "Deploy, Pod details:"
kubectl get deploy,rs,svc,pods