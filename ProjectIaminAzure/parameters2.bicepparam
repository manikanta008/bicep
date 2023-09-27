using 'main.bicep'

param apim_name = 'my-test1-apim'

param location = 'UAE North'

param api_name = 'test-api'

param sku = 'Developer'

param skuCount = 1

param publisherName = 'publisherName'

param publisherEmail = 'publisherEmail@contoso.com'

param apiRevisionDescription = 'Test api'

param api_path = 'po-api-test'

param api_serviceUrl = 'https://test-nonprod.azure-api.net/test-api-dev'

param tag_name = ['tag1','tag2']

param named_value = [
  {
    name: 'bicep-test'
    displayName: 'bicep-test'
    value : 'https://test-app12q.azurewebsites.net'
  }
  {
    name: 'bicep-test2'
    displayName: 'bicep-test2'
    value : 'https://test-app12q.azurewebsites.net'
  }
]

param operations = [
  {
    name:'operation6'
    displayName : '/api/test/testapi6'
    method:'GET'
    urlTemplate:'/api/test/testapi6'
    tag:'tag1'
    policy_value: '<!--\n    IMPORTANT:\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\n    - To remove a policy, delete the corresponding policy statement from the policy document.\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\n    - Policies are applied in the order of their appearance, from the top down.\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\n-->\r\n<policies>\r\n\t<inbound>\r\n\t\t<base />\r\n\t\t<set-backend-service base-url="{{bicep-test}}" />\r\n\t</inbound>\r\n\t<backend>\r\n\t\t<base />\r\n\t</backend>\r\n\t<outbound>\r\n\t\t<base />\r\n\t</outbound>\r\n\t<on-error>\r\n\t\t<base />\r\n\t</on-error>\r\n</policies>'
  }
  {
    name:'operation7'
    displayName : '/api/test/testapi7'
    method:'POST'
    urlTemplate:'/api/test/testapi7'
    tag:'tag2'
    policy_value: '<!--\n    IMPORTANT:\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\n    - To remove a policy, delete the corresponding policy statement from the policy document.\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\n    - Policies are applied in the order of their appearance, from the top down.\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\n-->\r\n<policies>\r\n\t<inbound>\r\n\t\t<base />\r\n\t\t<set-backend-service base-url="{{bicep-test2}}" />\r\n\t</inbound>\r\n\t<backend>\r\n\t\t<base />\r\n\t</backend>\r\n\t<outbound>\r\n\t\t<base />\r\n\t</outbound>\r\n\t<on-error>\r\n\t\t<base />\r\n\t</on-error>\r\n</policies>'
  }
  {
    name:'operation8'
    displayName : '/api/test/testapi8'
    method:'PUT'
    urlTemplate:'/api/test/testapi8'
    tag:'tag1'
    policy_value: '<!--\n    IMPORTANT:\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\n    - To remove a policy, delete the corresponding policy statement from the policy document.\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\n    - Policies are applied in the order of their appearance, from the top down.\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\n-->\r\n<policies>\r\n\t<inbound>\r\n\t\t<base />\r\n\t\t<set-backend-service base-url="{{bicep-test}}" />\r\n\t</inbound>\r\n\t<backend>\r\n\t\t<base />\r\n\t</backend>\r\n\t<outbound>\r\n\t\t<base />\r\n\t</outbound>\r\n\t<on-error>\r\n\t\t<base />\r\n\t</on-error>\r\n</policies>'
  }
  {
    name:'operation9'
    displayName : '/api/test/testapi9'
    method:'DELETE'
    urlTemplate:'/api/test/testapi9'
    tag:'tag2'
    policy_value: '<!--\n    IMPORTANT:\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\n    - To remove a policy, delete the corresponding policy statement from the policy document.\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\n    - Policies are applied in the order of their appearance, from the top down.\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\n-->\r\n<policies>\r\n\t<inbound>\r\n\t\t<base />\r\n\t\t<set-backend-service base-url="{{bicep-test2}}" />\r\n\t</inbound>\r\n\t<backend>\r\n\t\t<base />\r\n\t</backend>\r\n\t<outbound>\r\n\t\t<base />\r\n\t</outbound>\r\n\t<on-error>\r\n\t\t<base />\r\n\t</on-error>\r\n</policies>'
  }
  {
    name:'operation10'
    displayName : '/api/test/testapi10'
    method:'PATCH'
    urlTemplate:'/api/test/testapi510'
    tag:'tag1'
    policy_value: '<!--\n    IMPORTANT:\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\n    - To remove a policy, delete the corresponding policy statement from the policy document.\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\n    - Policies are applied in the order of their appearance, from the top down.\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\n-->\r\n<policies>\r\n\t<inbound>\r\n\t\t<base />\r\n\t\t<set-backend-service base-url="{{bicep-test}}" />\r\n\t</inbound>\r\n\t<backend>\r\n\t\t<base />\r\n\t</backend>\r\n\t<outbound>\r\n\t\t<base />\r\n\t</outbound>\r\n\t<on-error>\r\n\t\t<base />\r\n\t</on-error>\r\n</policies>'
  }
]
