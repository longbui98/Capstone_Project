##LONGBQ 11-21-2023
## Project Overview

In this project, you will apply the skills you have acquired of Devops to operationalize a Capstone Project


### Project Tasks

Your project goal is to operationalize this working
* Create Github repository with project code.
* Use image repository to store Docker images
* Execute linting step in code pipeline
* Build a Docker container in a pipeline
* The Docker container is deployed to a Kubernetes cluster
* Use Blue/Green Deployment or a Rolling Deployment successfully

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
#run setup_env.sh to install Hadolint and minukube
./setup_env.sh
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
