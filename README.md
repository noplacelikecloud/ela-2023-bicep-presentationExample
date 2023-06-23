# Experts Live Austria 2023 - Azure Bicep from manual to magical

## Purpose
This repository is used for giving a demo about deploying Azure Bicep via Azure Pipelines using multiple parameter sources

## Usage
### Azure DevOps
To properly use this repository, please clone it to a Azure DevOps Repository in order to use Azure Pipelines and Universal Packages.

### Modules from Universal Packages
To make it independent to the templates repository, I added the static folder
in the structure with all needed modules, instead of getting this from Universal Packages!

You can run this with Universal Packages by cloning [this](https://github.com/noplacelikecloud/ela-2023-bicep-templates) repository and publishing the packages using pipelines published in the same repo.

### Parameters by Table Storage
For further information about using Azure Table Storage with Bicep deployments, see here: [Blog - Bicep parameters from Azure Table Storage](https://noplacelike.cloud/bicep-parameters-from-table/)

## Contribution
You want to give this an inspiring contribution? You're welcome to open pull request :)

It was a pleasure to participate on ELA 2023! I hope we see each other next year :)
