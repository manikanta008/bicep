module webappdeployment 'modules/webapp.bicep' = {
  name: 'webappdeployment'
  params: {
    webAppName: 'sampleapp'
    location: 'eastus'
  }
}


module storagedeployment 'modules/storage.bicep' = {
  name: 'storagedeployment'
  params:{
    storageaccountName: 'mystorage'
  }
}