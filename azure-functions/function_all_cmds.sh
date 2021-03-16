#!/bin/bash

# to list available templates for function apps for python language
func templates list -l python

# to initialize a python function app using a trigger
# executed under a directory
func init --worker-runtime python --language python

# to create a function into the current function app directory
func function -n trial-input-trigger -l python -t 'Durable Functions HTTP starter'


# to start a azure function app
func host start
