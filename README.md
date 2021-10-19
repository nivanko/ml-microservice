[![CircleCI](https://circleci.com/gh/nivanko/ml-microservice/tree/master.svg?style=svg)](https://circleci.com/gh/nivanko/ml-microservice/tree/master)
## Project Overview

The goal of this project is to show how an existing microservice (a small Python application) can be containerized using Docker and then run in a Kubernetes cluster.

Using a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, a Python flask app serves out predictions (inference) about housing prices through API calls.

### Setup the Environment

* Create a virtualenv (by `make setup` or manually) and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Short files description

* `app.py` - Python Flask application
* `make_prediction.sh` - test running application
* `run_docker.sh` - create & run Docker container
* `run_kubernetes.sh` - run container in local kubernetes cluster
* `upload_docker.sh` - push image to Docker Hub
