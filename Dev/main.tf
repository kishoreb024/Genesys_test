terraform {
  backend "remote" { 
    
    organization = "Genesys_Mumbai_Test" 

    workspaces { 
      name = "Genesys_Dev_TF" 
    } 
  }  
  required_version = "~> 1.7"
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud",
      version = ">= 1.6.0"
    }
  }
}


provider "genesyscloud" {
  oauthclient_id = "b9f8ef5f-397c-4624-8e3d-a7aaef53f68e"
  oauthclient_secret = "0X-JV6aldrA11waZoe50-VfvKTyzbDLa5fouvxdrz1c"
  aws_region = "ap-south-1"
}