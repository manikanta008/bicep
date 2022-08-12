module webappdeployment 'modules/webapp.bicep' = {
  name: 'webappdeployment'
  params: {
    webappName:'cicdazurebicepwebapp'
    location: 'eastus'
  }
}


module storagedeployment 'modules/storage.bicep' = {
  name: 'storagedeployment'
  params:{
    storageaccoutname: 'iaminazure'
  }
}