# ~/azurerm/dev/dev-core-1/main.tf
# Kindly provided by straubt1

provider "azurerm" {
    location = var.location
}
#resource "azurerm_resource_group" "dev-core-1" {
#  name     = "${var.namespace}-app-rg"
#  location = var.location
#  tags     = var.common_tags
#}

