module azureaspdeployment 'modules/webapp.bicep' = {
  name: 'azureaspdeployment'
  params: {
    aspName: 'iaminazure'
  }
}

module webappdeployment 'modules/webapp.bicep' = {
  name: 'webappdeployment'
  params: {
    webappName:'iaminazurebicepwebapp'
    location: 'eastus'
  }
}


module storagedeployment 'modules/storage.bicep' = {
  name: 'storagedeployment'
  params:{
    storageaccoutname: 'iaminazure'
  }
}
