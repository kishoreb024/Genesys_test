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

variable "GENESYSCLOUD_OAUTHCLIENT_ID"{
  sensitive= false
}

output "GENESYSCLOUD_OAUTHCLIENT_ID" {
  value = ${var.GENESYSCLOUD_OAUTHCLIENT_ID}
}

provider "genesyscloud" {
  oauthclient_id = "b9f8ef5f-397c-4624-8e3d-a7aaef53f68e"
  oauthclient_secret = "svg1eWNtXVNj8BN-4BDQqBhnD3Jf5oY_q2DixDa0d-E"
  aws_region = "ap-south-1"
}