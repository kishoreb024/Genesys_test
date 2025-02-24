terraform {
  backend "remote" { 
    
    organization = "Genesys_Mumbai_Test" 

    workspaces { 
      name = "Genesys_Prod_Workspace" 
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
  oauthclient_id = "f78181ab-9bab-43dd-aa79-5874151c1305"
  oauthclient_secret = "lyRry3hyVo_QRyHLPC26EwFZdJOH4e6WRBzldFCnmLo"
  aws_region = "eu-west-2"
}