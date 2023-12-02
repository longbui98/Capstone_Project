#!/user/bin/env/bash

# Get Nodes details
echo "############### Node details ###############"
kubectl get nodes

# Create the deployment and loadbalancer
echo "############### Deploy app ###############"
kubectl create deployment longbui-api --image=longtony/longbui-api:v1.0.0

# Forward the container port to a host
echo "############### Forward port to a host ###############"
kubectl port-forward longtony/longbui-api:v1.0.0 8000:80

# Get details for deployment
echo "############### Deploy, RS, SVC, Pod details ###############"
kubectl get deploy,rs,svc,pods