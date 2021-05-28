#!/bin/bash

# to list available templates for function apps for python language
func templates list -l python

# to initialize a python function app using a trigger
# executed under a directory
func init --worker-runtime python --language python
func init --worker-runtime python --language python --docker

# to create a Durable trigger function into the current function app directory from template
func function new -n trial-input-trigger -l python -t 'Durable Functions HTTP starter'

# to create a Durable Orchestrator function from template
func function new -n trial-func-orchestrator -l python -t 'Durable Functions orchestrator'

# to create a Durable Activity function from template
func function new -n file-handle-activity -l python -t 'Durable Functions activity'

# to start a azure function app
func host start


# to create app service plan
az functionapp plan create --resource-group rg1 --name app-plan1 --location eastus2 --number-of-workers 1 --sku EP1 --is-linux

# to create function app with custom base docker image
az functionapp create --name app1 --storage-account sa1 --resource-group rg1 --plan plan1 --runtime python --deployment-container-image-name repo1/image1:latest
