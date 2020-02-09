# ~/azurerm/dev/dev-app-1/variables.tf
# Kindly provided by straubt1

variable "namespace" {
  description = "Name to assign to resources for easy organization."
}

variable "location" {
  description = "The Azure region to deploy all infrastructure to."
  default     = "centralus"
}

variable "common_tags" {
  description = "The tags to apply to all resources."
  type        = map
  default     = {}
}

