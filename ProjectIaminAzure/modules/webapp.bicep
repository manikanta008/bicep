

@description('App service name')


param webAppName string


param location string = resourceGroup().location


resource azureasp 'Microsoft.Web/serverfarms@2020-06-01' = {
  name: 'iaminazure'
  location: location
  sku: {
    tier: 'Free'
    name: 'F1'
  }
}


resource webappdeployment 'Microsoft.Web/sites@2022-03-01' = {
  name: webAppName
  location: location
  properties: {
    serverFarmId: azureasp.id
  }
}