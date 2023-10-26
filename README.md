Plan Of Action:-

1. Download code from github https://github.com/yasirabbasi81/terraform
   
2. Terraform Code (local deployment): We’ll use Terraform code, executed from our local machine using azure cli to deploy following resources

Resource Group
Virtual Network
Virtual Machine
Storage Account

3. Terraform Code (shared state deployment): Additionally, we’ll employ Terraform code that deploys Azure infrastructure while utilizing a shared state file.

3.1. Azure Subscription: We need an Azure Subscription to serve as the environment where we will deploy our infrastructure.

3.2. Azure Organization and Project and pipeline

By following this approach, we can establish a solid foundation for our Azure environment, allowing for efficient management and automation of infrastructure deployment.

Tasks:-

1- Run azure cli and authenticate with your azure account

az login

2- Inspect code in main.tf file and initialize terraform 

terraform init

3- Deploy infrastucture to cloud

terraform fmt - for correcting formatting errors
terraform validate - for validating configurations
terraform plan - to review plan before execution
terraform apply - to execute

4- Inspect resources which are created on cloud

5- Move shared state to the cloud container
  - Create resource group, storage account, container
  - Add following code to main.tf
    backend "azurerm" {
    resource_group_name  = "workshop"
    storage_account_name = "terraformworkshop2023"
    container_name       = "state-backend"
    key                  = "get from azure storage account keys blade"
  }
  - Run azure init again to apply changes to configurations

6- Apply changes using terraform apply, check state file in the storage container and remove terraform.tfstate file locally

7- Create azure classic pipeline to automate terraform infrastructure.

  - Create service connection from project setting blade
  - Rename virtual-machine.txt to virtual-machine.tf
  - Create classic pipeline for terraform
  - Inspect virtual machine which is created by azure pipeline
