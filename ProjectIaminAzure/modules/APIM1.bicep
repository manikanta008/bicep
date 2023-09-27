param apim_name string
param location string
param api_name string
param sku string
param publisherEmail string
param publisherName string
param apiRevisionDescription string
param api_path string
param api_serviceUrl string
param skuCount int
param tag_name array
param named_value array
param operations array

// to create apim
resource apiManagementInstance 'Microsoft.ApiManagement/service@2020-12-01' = {
  name: apim_name
  location: location
  sku:{
    capacity: skuCount
    name: sku
  }
  properties:{
    virtualNetworkType: 'None'
    publisherEmail: publisherEmail
    publisherName: publisherName
  }
}

// to create apis
resource apis 'Microsoft.ApiManagement/service/apis@2022-08-01' = {
  name: apim_name
  parent: apiManagementInstance
  properties:{
    displayName: api_name
    apiRevision: '1'
    description: 'Built on ASP.NET Core 5.0 Web API'
    apiRevisionDescription: apiRevisionDescription
    apiType:'http'
    isCurrent: true
    subscriptionRequired: false
    path: api_path
    protocols:[
      'https'
    ]
    subscriptionKeyParameterNames:{
      header: 'Ocp-Apim-Subscription-Key'
      query: 'subscription-key'
    }
    serviceUrl: api_serviceUrl
  }
}

// create named values
resource named_values 'Microsoft.ApiManagement/service/namedValues@2023-03-01-preview' = [for item in named_value :{
  name: item.name
  parent: apiManagementInstance
  properties:{
    displayName: item.displayName
    value: item.value
  }
}]

//to create a new tag
resource tags 'Microsoft.ApiManagement/service/tags@2023-03-01-preview'= [for item in tag_name: {
  name: item
  parent: apiManagementInstance
  properties:{
    displayName: item
  }
}]

// to create operations
resource operation 'Microsoft.ApiManagement/service/apis/operations@2023-03-01-preview'= [for item in operations: {
  name: item.name
  parent: apis
  properties:{
    displayName: item.displayName
    method: item.method
    urlTemplate: item.urlTemplate
  }
}]


//assign tags to operations
resource opertion_tags 'Microsoft.ApiManagement/service/apis/operations/tags@2023-03-01-preview'= [for i in range(0,length(operations)): {
  name: operations[i].tag
  parent: operation[i]
  dependsOn:[
    tags
  ]
}]

// create and assign policies to operations
resource policies 'Microsoft.ApiManagement/service/apis/operations/policies@2023-03-01-preview'= [for i in range(0,length(operations)): {
  name: 'policy'
  parent: operation[i]
  properties:{
    format: 'rawxml'
    value: operations[i].policy_value
  }
  dependsOn:[named_values]
}]
