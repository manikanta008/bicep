

@description('App-Service-Name')
param azureaspName string

param webappName string

param location string



resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: azureaspName
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
