import subprocess
import sys
import os
import time
import PureCloudPlatformClientV2

CLIENT_ID = GENESYSCLOUD_OAUTHCLIENT_ID
CLIENT_SECRET = GENESYSCLOUD_OAUTHCLIENT_SECRET
CLIENT_REGION = os.environ["GENESYSCLOUD_REGION"]
CLIENT_API_REGION = os.environ["GENESYSCLOUD_API_REGION"]
print (CLIENT_ID)
print (CLIENT_SECRET)
PureCloudPlatformClientV2.configuration.host = 	CLIENT_API_REGION
apiClient = PureCloudPlatformClientV2.api_client.ApiClient().get_client_credentials_token(CLIENT_ID, CLIENT_SECRET)
ArchitectApi = PureCloudPlatformClientV2.ArchitectApi(apiClient)

def findFlow(FlowName):
  results = ArchitectApi.get_flows(name=FlowName)

  if len(results.entities)==1:
    print (results.entities[0])
    return results.entities[0]
  else: 
    return None    

def checkFlows():
  Sample_TF_Dev = findFlow("Sample_TF_Dev") 
  
  assert not(Sample_TF_Dev is None)

  
  assert (Sample_TF_Dev.name=="Sample_TF_Dev")==True,   "Retrieved Sample_TF_Dev Flow name does not match" 


#adding check
checkFlows()
