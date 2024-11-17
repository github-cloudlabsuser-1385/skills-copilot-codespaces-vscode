# Check if the Az module is installed
if (-not (Get-Module -ListAvailable -Name Az)) {
    # Install the Az module
    Install-Module -Name Az -AllowClobber -Force
}

# Import the Az module
Import-Module Az

# Variables
$resourceGroupName = "yourResourceGroupName"
$location = "yourLocation"
$storageAccountName = "yourStorageAccountName"
$skuName = "Standard_LRS"

# Login to Azure
Connect-AzAccount

# Create Resource Group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create Storage Account
New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                     -Name $storageAccountName `
                     -Location $location `
                     -SkuName $skuName `
                     -Kind StorageV2