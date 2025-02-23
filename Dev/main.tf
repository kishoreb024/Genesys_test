terraform {
  cloud { 
    
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
  type        = string
  description = "Genesys Client ID"
  sensitive = true
}

variable "GENESYSCLOUD_OAUTHCLIENT_SECRET" {
  type        = string
  description = "Genesys Secret"
  sensitive = true
}



provider "genesyscloud" {
  oauthclient_id = var.GENESYSCLOUD_OAUTHCLIENT_ID
  oauthclient_secret = var.GENESYSCLOUD_OAUTHCLIENT_SECRET
  aws_region = var.GENESYSCLOUD_REGION
}
