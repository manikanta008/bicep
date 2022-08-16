

@description('This is the storage account name')
param storageaccountName string



param location string = resourceGroup().location


resource storageaccount 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: storageaccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
