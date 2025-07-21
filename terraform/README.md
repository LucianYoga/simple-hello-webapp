# Terraform: Azure Web App

This directory contains Terraform code to provision an Azure Web App for static site hosting.

## Usage

1. Initialize Terraform:
   ```sh
   terraform init
   ```
2. Review the plan:
   ```sh
   terraform plan
   ```
3. Apply the configuration:
   ```sh
   terraform apply
   ```

## Outputs
- `webapp_url`: The default hostname of the deployed Azure Web App. 