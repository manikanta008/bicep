module webappdeployment 'modules/webapp.bicep' = {
  name: 'webappdeployment'
  params: {
    azureaspName: 'azureasp1'
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
