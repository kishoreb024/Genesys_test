import subprocess
import sys
import os
import time
import PureCloudPlatformClientV2

CLIENT_ID = os.environ["GENESYSCLOUD_OAUTHCLIENT_ID"]
CLIENT_SECRET = os.environ["GENESYSCLOUD_OAUTHCLIENT_SECRET"]
CLIENT_REGION = os.environ["GENESYSCLOUD_REGION"]
CLIENT_API_REGION = os.environ["GENESYSCLOUD_API_REGION"]

PureCloudPlatformClientV2.configuration.host = 	CLIENT_API_REGION
apiClient = PureCloudPlatformClientV2.api_client.ApiClient().get_client_credentials_token(CLIENT_ID, CLIENT_SECRET)
routingApi = PureCloudPlatformClientV2.RoutingApi(apiClient)
integrationsApi = PureCloudPlatformClientV2.IntegrationsApi(apiClient)

def findFlow(FlowName):
  results = ArchitectApi.get_flows(name=FlowName)

  if len(results.entities)==1:
    return results.entities[0]
  else: 
    return None    

def checkFlows():
  Sample_TF_Dev = findFlow("Sample_TF_Dev") 
  
  assert not(Sample_TF_Dev is None)

  
  assert (Sample_TF_Dev.name=="Sample_TF_Dev")==True,   "Retrieved Sample_TF_Dev Flow name does not match" 


#adding check
checkFlows()
