param name string
param containerName string = 'logs'
param location string = resourceGroup().location

// concat a random string to the container name to avoid conflict
var storageAccountName = '${name}${uniqueString(resourceGroup().id)}'


resource storageacct 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageAccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

resource container 'Microsoft.Storage/storageAccounts/blobServices/containers@2019-06-01' = {
  name: '${storageacct.name}/default/${containerName}'
  properties: {
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
}
