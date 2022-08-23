[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Celnet-hub/DevOps-ML/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Celnet-hub/DevOps-ML/tree/main)

## Project Overview

This project was done applying the skills acquired in a course to titled "Operationalize a Machine Learning Microservice API". 

Given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

The project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project, the following tasks were done:
* Test project code using linting
* Complete a Dockerfile to containerize this application
* Deploy containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
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

### Files

* app.py: serves out predictions (inference) about housing prices through API calls.
* Makefile: used to build alias commands to install and run specific tasks.
* Dokerfile: used to define some set of instructions needed for Docker to build docker imaged automatically.
* run_docker.sh: a shell script used to perform the following:
  * Build the docker image with a tag
  * Run the containerized flask application
  * Map the container's port to the host port
* upload_docker.sh: a shell script that is used to upload docker image to docker hub
* docker_out.txt: used to store the output of running the docker container
* run_kubernetes.sh: a shell script used to run the docker container with kubectl
* make_prediction.sh: a shell script that simulates predictions
* kubernetes.out.txt: used to hold the output of run_kubernetes.sh
