terraform {
  cloud { 
    
    organization = "Genesys_Mumbai_Test" 

    workspaces { 
      name = "Genesys_Flow_Workspace" 
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
  oauthclient_id = TF_VAR_GENESYSCLOUD_OAUTHCLIENT_ID
  oauthclient_secret = TF_VAR_GENESYSCLOUD_OAUTHCLIENT_SECRET
  aws_region = TF_VAR_GENESYSCLOUD_REGION
}
