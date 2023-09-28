#!/bin/bash

# Set the stack name
stack_name="truong-capstone-eks"

# Create the network stack
network_stack_name="$stack_name-network"
network_template="network.yml"
network_parameters="network-parameters.json"
aws cloudformation create-stack --stack-name "$network_stack_name" --template-body file://"$network_template" --parameters file://"$network_parameters"
aws cloudformation wait stack-create-complete --stack-name "$network_stack_name"

# Create the server stack
# server_stack_name="$stack_name-server"
# server_template="server.yml"
# server_parameters="server-parameters.json"
# aws cloudformation create-stack --stack-name "$server_stack_name" --template-body file://"$server_template" --parameters file://"$server_parameters"
# aws cloudformation wait stack-create-complete --stack-name "$server_stack_name"
