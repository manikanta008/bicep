module appServicePlan 'modules/webapp.bicep' = {
  azureaspName: 'azureaspName'
  params: {
    azureaspName: 'azureasp1'
    location: 'eastus'
  }
}
module webappdeployment 'modules/webapp.bicep' = {
  name: 'webappdeployment'
  params: {
    webappName: 'iaminazurebicepwebapp'
    location: 'eastus'
  }
}


module storagedeployment 'modules/storage.bicep' = {
  name: 'storagedeployment'
  params:{
    storageaccoutname: 'iaminazure'
  }
}
