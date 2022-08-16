

@description('App-Service-Name')
param aspName1 string
param webappName string

param location string



resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: aspName1
  location: location
  sku: {
    tier: 'Free'
    name: 'F1'
  }
}


resource azurewebapp 'Microsoft.Web/sites@2022-03-01' = {
  name: webappName
  location: location
  properties: {
    storageAccountRequired: azureasp.id
  }
}
