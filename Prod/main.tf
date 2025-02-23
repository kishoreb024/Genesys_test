terraform {
  backend "remote" { 
    
    organization = "Genesys_Mumbai_Test" 

    workspaces { 
      name = "Genesys_Prod_TF" 
    } 
  } 
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud",
      version = ">= 1.6.0"
    }
  }
}

variable "GENESYSCLOUD_OAUTHCLIENT_ID1" {
}
variable "GENESYSCLOUD_OAUTHCLIENT_SECRET1" {
}

provider "genesyscloud" {
  oauthclient_id = var.GENESYSCLOUD_OAUTHCLIENT_ID1
  oauthclient_secret = var.GENESYSCLOUD_OAUTHCLIENT_SECRET1
  aws_region = "ap-south-1"
}
