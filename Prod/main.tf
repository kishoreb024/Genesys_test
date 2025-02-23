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

provider "genesyscloud" {
  oauthclient_id = os.environ["GENESYSCLOUD_OAUTHCLIENT_ID"]
  oauthclient_secret = os.environ["GENESYSCLOUD_OAUTHCLIENT_SECRET"]
  aws_region = os.environ["GENESYSCLOUD_REGION"]
}

