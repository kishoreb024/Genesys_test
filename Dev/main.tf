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
  type = string
  default = "b9f8ef5f-397c-4624-8e3d-a7aaef53f68e"
}
variable "GENESYSCLOUD_OAUTHCLIENT_SECRET" {
    type = string
  default = "svg1eWNtXVNj8BN-4BDQqBhnD3Jf5oY_q2DixDa0d-E"
}

provider "genesyscloud" {
  oauthclient_id = var.GENESYSCLOUD_OAUTHCLIENT_ID
  oauthclient_secret = var.GENESYSCLOUD_OAUTHCLIENT_SECRET
  aws_region = "ap-south-1"
}

