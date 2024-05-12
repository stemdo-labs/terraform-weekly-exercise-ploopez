terraform {   
    required_version = ">= 0.13"
    required_providers {     
        azurerm = {       
            source = "hashicorp/azurerm"       
            version = "3.102.0"     

        }   
    }   
    #backend "azurerm" {       
    #     resource_group_name  = "rg1plopez-lab01"       
    #     storage_account_name = "sta1plopez"       
    #     container_name       = "tfstate"       
    #     key                  = "terraform.tfstate"   
    #} 
}  

provider "azurerm" {
  features {}
}


module "terraform_azure_workload" {   
    source = "github.com/stemdo-labs/terraform-exercises-ploopez/soluciones/modulo-weekly-exercise" 
    resource_group_name = var.resource_group_name     
    location = var.location
    vnet_name = var.vnet_name
    vnet_address_space = var.vnet_address_space
    subnets = var.subnets
    network_interface = var.network_interface
    linux_virtual_machine = var.linux_virtual_machine
    load_balancer = var.load_balancer

    
}


resource "azurerm_storage_container" "container" {
  name                  = "tfstate"
  storage_account_name  = var.storage_account_name
  container_access_type = "private"
}

