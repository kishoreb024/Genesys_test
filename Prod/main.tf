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



provider "genesyscloud" {
  oauthclient_id = env.GENESYSCLOUD_OAUTHCLIENT_ID
  oauthclient_secret = env.GENESYSCLOUD_OAUTHCLIENT_SECRET
  aws_region = "ap-south-1"
}
