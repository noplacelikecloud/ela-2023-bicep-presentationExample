# Experts Live Austria 2023 - Azure Bicep from manual to magical

## Purpose
This repository is used for giving a demo about deploying Azure Bicep via Azure Pipelines using multiple parameter sources

## Usage
### Azure DevOps
To properly use this repository, please clone it to a Azure DevOps Repository in order to use Azure Pipelines and Universal Packages.

### Modules from Universal Packages
To make it independent to the templates repository, I've added the modules in the modules folder!
in the structure with all needed modules, instead of getting this from Universal Packages!

You can build this with Universal Packages by cloning [this](https://github.com/noplacelikecloud/ela-2023-bicep-templates) repository and publishing the packages using pipelines published in the same repo.
An example is published in the "modulesFromUniversalPackages" Branch for your use!

### Parameters by Table Storage
For further information about using Azure Table Storage with Bicep deployments, see here: [Blog - Bicep parameters from Azure Table Storage](https://noplacelike.cloud/bicep-parameters-from-table/)

### Important Note!
1. Please have a KeyVault with the VMs LocalAdminPassword in place and provide it's information in the main.bicep file as default value or include it in your parameters!
2. In the Microsoft Forms example, you have a IPAM request included to get the next available IP Range. Please make sure you either have an [Azure IPAM](https://github.com/Azure/IPAM) in place and provided all needed information in the Pipelines variables or you replace it by giving the IP Addresses in your parameters.
3. To provide automation steps behind the Microsoft Forms instance, the PowerAutomate Flow can be imported from the ZIP folder in /powerAutomate

## Contribution
You want to give this an inspiring contribution? You're welcome to open pull request :)

It was a pleasure to participate on ELA 2023! I hope we see each other next year :)
