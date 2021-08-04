# bicep-demo
Quick Repo with a basic Bicep Template in it


# 1-standard
0. Browse to 1-standard folder
1. Create RG
2. Edit params
3. What If: `az deployment group what-if  --template-file storage.bicep --parameters "@storage.parameters.json" --resource-group adam-bicep-1`
4. Deploy: `az deployment group create --template-file storage.bicep --parameters "@storage.parameters.json" --resource-group adam-bicep-1`

# 2-module
0. Browse to 2-module folder
1. Create RG
2. Edit Params in `deploy.bicep`
3. What If: `az deployment group what-if  --template-file deploy.bicep --resource-group adam-bicep-1`
4. Deploy: `az deployment group create --template-file deploy.bicep --resource-group adam-bicep-1`