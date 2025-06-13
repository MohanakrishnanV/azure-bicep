@description('Name of the resource group')
param resourceGroupName string

@description('Region for the resource group')
param location string


module resourceGroupModule 'modules/resourceGroup.bicep' = {
  name: resourceGroupName
  scope: subscription(resourceGroupName)
  params: {
    resourceGroup: resourceGroupName
    location: location
  }
}
