

module webappdeployment 'modules/webapp.bicep' = {
  name: 'webappdeployment'
  params: {
    azureaspName: 'samlenote121'
    webAppName: 'sampleapp783'
    location: 'eastus'
  }
}


module storagedeployment 'modules/storage.bicep' = {
  name: 'storagedeployment'
  params:{
    storageaccountName: 'mystorage14321'
  }
}
