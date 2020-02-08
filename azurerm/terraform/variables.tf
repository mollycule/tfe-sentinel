variable "tfe_hostname" {
  description = "The domain where your TFE is hosted."
  default     = "app.terraform.io"
}

variable "tfe_organization" {
  description = "The TFE organization to apply your changes to."
}

variable "tfe_token" {
  description = "TFE Token to authenticate"
}

variable "tfe_workspace_names" {
  description = "Name of workspaces policies are applied to"
  type        = list
}


