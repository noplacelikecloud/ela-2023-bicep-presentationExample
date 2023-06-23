targetScope = 'subscription'

param nameRgNetwork string
param nameRgComputing string
param location string
param VNETName string
param VNETPrefix string
param SNETName string
param SNETPrefix string
param VMName string
param VMSize string

param kvRG string = 'rg-sharedinfra-befl-weu-test-001'
param kvName string = 'kvbeflsharedweutest01'

param localAdminUser string
param localAdminPassword_SecretName string = 'localAdminPassword'

resource keyVault 'Microsoft.KeyVault/vaults@2023-02-01' existing = {
  name: kvName
  scope: resourceGroup(kvRG)
}

resource RG_Network 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: nameRgNetwork
  location: location
}

resource RG_Compute 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: nameRgComputing
  location: location
}

module VNET 'modules/VNET/mod_VNET.bicep' = {
  scope: RG_Network
  name: 'deploy-demo-vnet'
  params: {
    name: VNETName
    dnsServer: ''
    location: location
    VNETPrefix: VNETPrefix
    SubnetName: SNETName
    SubnetPrefix: SNETPrefix
  }
}

module VM 'modules/VM/mod_VM.bicep' = {
  scope: RG_Compute
  name: 'deploy-demo-vm'
  params: {
    VMName: VMName
    VNETName: VNETName
    location: location
    subnetName: SNETName
    VMSize: VMSize
    networkRG: RG_Network.name
    localAdminUser: localAdminUser
    localAdminPasswd: keyVault.getSecret(localAdminPassword_SecretName)
  }
}

output VNETID string = VNET.outputs.id
