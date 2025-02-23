terraform {
  backend "remote" { 
    
    organization = "Genesys_Mumbai_Test" 

    workspaces { 
      name = "Genesys_Dev_TF" 
    } 
  }  
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud",
      version = ">= 1.6.0"
    }
  }
}

variable "GENESYSCLOUD_OAUTHCLIENT_ID" {
  default = ""
}
variable "GENESYSCLOUD_OAUTHCLIENT_SECRET" {
  default = ""
}

provider "genesyscloud" {
  oauthclient_id = var.GENESYSCLOUD_OAUTHCLIENT_ID
  oauthclient_secret = var.GENESYSCLOUD_OAUTHCLIENT_SECRET
  aws_region = "ap-south-1"
}