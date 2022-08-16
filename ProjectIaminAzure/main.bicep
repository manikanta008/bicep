param azureaspName string = 'azureasp1'
param webappName string = 'iaminazurebicepwebapp'
param storageaccountName string = 'mystorage'

module webappdeployment 'modules/webapp.bicep' = {
  name: 'webappdeployment'
  params: {
    storageaccountName: storageaccountName
    azureaspName: azureaspName
    webappName: webappName
  }
}


module storagedeployment 'modules/storage.bicep' = {
  name: 'storagedeployment'
  params:{
    storageaccoutname: storageaccountName
  }
}
