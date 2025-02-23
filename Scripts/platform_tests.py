import subprocess
import sys
import os
import time
import PureCloudPlatformClientV2

CLIENT_ID = "b9f8ef5f-397c-4624-8e3d-a7aaef53f68e"
CLIENT_SECRET = "svg1eWNtXVNj8BN-4BDQqBhnD3Jf5oY_q2DixDa0d-E"
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
