param apim_name string
param location string
param api_name string
param api_path string
param api_serviceUrl string
param publisherEmail string
param publisherName string
param apiRevisionDescription string

@description('The pricing tier of this API Management service')
@allowed([
  'Developer'
  'Standard'
  'Premium'
])
param sku string

@description('The instance size of this API Management service.')
@allowed([
  1
  2
])
param skuCount int

@description('Define the API tags to be create.')
param tag_name array

@description('Define the named values to be used in policies.')
param named_value array

@description('Define the operations create in API.')
param operations array

module apim 'Modules/APIM1.bicep'={
  name: apim_name
  params: {
    apim_name: apim_name
    location: location
    sku: sku
    skuCount: skuCount
    api_name: api_name
    api_path: api_path
    api_serviceUrl: api_serviceUrl
    named_value: named_value
    operations: operations
    tag_name: tag_name
    publisherName: publisherName
    publisherEmail: publisherEmail
    apiRevisionDescription: apiRevisionDescription
  }
}
