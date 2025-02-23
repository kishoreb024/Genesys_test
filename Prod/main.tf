terraform {
  cloud { 
    
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

variable "GENESYSCLOUD_REGION" {
  type        = string
  description = "Genesys Region"
  sensitive = true
}
provider "genesyscloud" {
  oauthclient_id = GENESYSCLOUD_OAUTHCLIENT_ID
  oauthclient_secret = GENESYSCLOUD_OAUTHCLIENT_SECRET
  aws_region = GENESYSCLOUD_REGION
}

