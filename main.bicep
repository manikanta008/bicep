

module webappdeployment 'modules/webapp.bicep' = {
  name: 'webappdeployment'
  params: {
    webappName:'iaminazurebicepwebapp'
    location: 'eastus'
  }
}
