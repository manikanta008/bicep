module webappdeployment 'modules/webapp.bicep' = {
  name: 'webappdeployment'
  params: {
    webappName:'cicdazurebicepwebapp'
    location: 'eastus'
  }
}
