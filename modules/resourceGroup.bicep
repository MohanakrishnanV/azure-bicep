// resourceGroup.bicep
targetScope = 'subscription'

@description('Name of the resource group')
param resourceGroup string

@description('Location for the resource group')
param location string

resource myresourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroup
  location: location
}
output resourceGroupName string = myresourceGroup.name

