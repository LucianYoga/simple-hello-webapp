# Simple Hello World Web App on Azure

This project demonstrates how to:

1. Provision Azure Web App infrastructure using Terraform
2. Deploy a simple Hello World webpage
3. Automate deployment using GitHub Actions

## Structure
- `terraform/` - Terraform code for Azure resources
- `web/` - Static Hello World webpage
- `.github/workflows/` - GitHub Actions workflow for deployment 

## My Notes
1. Create a Service Principal
    - az ad sp create-for-rbac --name "my-tf-app" --role="Contributor" --scopes="/subscriptions/<SUBSCRIPTION_ID>"
2.Export values as environment variables for Terraform.
    - source ./set-azure-env.sh
3. Test with Azure CLI
    - az login --service-principal \
  --username "$ARM_CLIENT_ID" \
  --password "$ARM_CLIENT_SECRET" \
  --tenant "$ARM_TENANT_ID"
4. Quick Script to Validate
    - az login --service-principal \
  --username "$ARM_CLIENT_ID" \
  --password "$ARM_CLIENT_SECRET" \
  --tenant "$ARM_TENANT_ID" >/dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "✅ Azure Service Principal credentials are valid."
else
  echo "❌ Invalid Azure Service Principal credentials."
fi
5. Commit and Push Your Code
    - git add .
    - git commit -m "Add simple hello world webapp with Terraform and GitHub Actions"
    - git push origin main
6.  Initialize Git
    - git init
7. Add a Remote Repository
    - git remote add origin <REMOTE_URL>
    - git remote add origin https://github.com/your-username/your-repo.git
    - git remote set-url origin https://LucianYoga:ghp_YourTokenHere@github.com/LucianYoga/simple-hello-webapp.git