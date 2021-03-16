#!/bin/bash

# to list available templates for function apps for python language
func templates list -l python

# to create a python function app using a trigger
func function -n trial-input-trigger -l python -t 'Durable Functions HTTP starter'
