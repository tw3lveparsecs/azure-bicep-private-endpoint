param deploymentName string = 'privateEndpoint${utcNow()}'

module privateEndpoint 'private-endpoint.bicep' = {
  name: deploymentName
  params: {
    privateEndpointName: 'ajlabtest01stg-pep'
    privateEndpointSubnetId: '/subscriptions/200ef0b6-6c4f-4c21-a331-f8301096bac9/resourceGroups/temp/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/privateEndpoints'
    targetResourceId: '/subscriptions/200ef0b6-6c4f-4c21-a331-f8301096bac9/resourceGroups/temp/providers/Microsoft.Storage/storageAccounts/ajlabtest01stg'
    groupIds: [
      'blob'
    ]
    privateDnsZoneId: '/subscriptions/200ef0b6-6c4f-4c21-a331-f8301096bac9/resourceGroups/temp/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net'
  }
}
