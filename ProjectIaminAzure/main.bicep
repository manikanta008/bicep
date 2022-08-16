

param storageaccountName string = 'mystorage'

param webAppName string = 'iaminazurebicepwebapp'
param location string = 'eastus'
param appServicePlanName string = 'azureasp1'

module webappdeployment 'modules/webapp.bicep' = {
  name: 'webappdeployment'
  params: {
    appServicePlanName: appServicePlanName
    webAppName: webAppName
  }
}


module storagedeployment 'modules/storage.bicep' = {
  name: 'storagedeployment'
  params:{
    storageaccountName: storageaccountName
    location:  location
  }
}
