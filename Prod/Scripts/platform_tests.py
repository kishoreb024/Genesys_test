import subprocess
import sys
import os
import time
import PureCloudPlatformClientV2

CLIENT_ID = "f78181ab-9bab-43dd-aa79-5874151c1305"
CLIENT_SECRET = "lyRry3hyVo_QRyHLPC26EwFZdJOH4e6WRBzldFCnmLo"
CLIENT_REGION = "eu-west-2"
CLIENT_API_REGION = "https://api.euw2.pure.cloud"
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
  LBG_TF_Test_Prod = findFlow("LBG_TF_Test_Prod") 
  
  assert not(LBG_TF_Test_Prod is None)

  
  assert (LBG_TF_Test_Prod.name=="LBG_TF_Test_Prod")==True,   "Retrieved LBG_TF_Test_Prod Flow name does not match" 


#adding check
checkFlows()
