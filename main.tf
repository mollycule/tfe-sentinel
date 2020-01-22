

variable "tfe_hostname" {
    description = "The domain where your TFE is hosted."
    default     = "app.terraform.io"
}

variable "tfe_organization" {
    description = "The TFE organization to apply your changes to."
    default     = "example_corp"
}

provider "azurerm" {
    # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
    version = "=1.38.0"
    token    = var.tfe_token
}

resource "tfe_sentinel_policy" "main" {
    name         = "enforce-mandatory-tags"
    description  = "Don't allow resources to be created without tags"
    organization = var.tfe_token
    policy       = file("${path.module}/sentinel/enforce-mandatory-tags.sentinel")
    enforce_mode = "hard-mandatory"
}