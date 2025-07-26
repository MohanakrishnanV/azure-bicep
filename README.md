Azure Bicep Project

create a `main.bicepparam` file in the root directory and update the follow parameters to execute code, this can also be generated using the vscode by Generate Parameter File option 

```bicep
using './main.bicep'

param resourceGroupName = 'my-web-app-rg'
param location = 'eastus'

```

To validate from terminal
```shell
az deployment group validate \
  --name "dev" \
  --resource-group "myResourceGroup" \
  --template-file "main.bicep" \
  --parameters "main.bicepparam" \
```

To deploy form terminal
```shell
az deployment group create \
  --name "dev" \
  --resource-group "myResourceGroup" \
  --template-file "main.bicep" \
  --parameters "main.bicepparam" \
```