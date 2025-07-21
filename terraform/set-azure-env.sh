#!/bin/bash
# set-azure-env.sh
# Usage: source ./set-azure-env.sh
# Prompts for Azure Service Principal credentials and exports them for Terraform

echo "Enter your Azure Service Principal credentials for Terraform authentication:"
read -p "ARM_CLIENT_ID: " ARM_CLIENT_ID
read -s -p "ARM_CLIENT_SECRET: " ARM_CLIENT_SECRET; echo
read -p "ARM_SUBSCRIPTION_ID: " ARM_SUBSCRIPTION_ID
read -p "ARM_TENANT_ID: " ARM_TENANT_ID

export ARM_CLIENT_ID
export ARM_CLIENT_SECRET
export ARM_SUBSCRIPTION_ID
export ARM_TENANT_ID

echo "Azure environment variables set for Terraform." 