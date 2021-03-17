#!/bin/bash

# to list available templates for function apps for python language
func templates list -l python

# to initialize a python function app using a trigger
# executed under a directory
func init --worker-runtime python --language python

# to create a Durable trigger function into the current function app directory from template
func function new -n trial-input-trigger -l python -t 'Durable Functions HTTP starter'

# to create a Durable Orchestrator function from template
func function new -n trial-func-orchestrator -l python -t 'Durable Functions orchestrator'

# to create a Durable Activity function from template
func function new -n file-handle-activity -l python -t 'Durable Functions activity'

# to start a azure function app
func host start
