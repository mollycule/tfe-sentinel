
provider "tfe" {
  hostname = var.tfe_hostname
  token    = var.tfe_token
}

data "tfe_workspace_ids" "main" {
  names         = var.tfe_workspace_names
  organization = var.tfe_organization
}

resource "tfe_sentinel_policy" "main" {
  name         = "enforce-mandatory-tags"
  description  = "Don't allow resources to be created without tags"
  organization = var.tfe_organization
  policy       = file("${path.module}/sentinel/enforce-mandatory-tags.sentinel")
  enforce_mode = "hard-mandatory"
}

resource "tfe_policy_set" "main" {
  name                   = "azure_example_policy_set"
  description            = "Policy set for governing Azure resource deployment"
  organization           = var.tfe_organization
  policy_ids             = [tfe_sentinel_policy.main.id]
  workspace_external_ids = values(data.tfe_workspace_ids.main.external_ids)
}