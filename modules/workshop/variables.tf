variable "workshop_metal_api_token" {
  description = "Equinix Metal user api token."
  type        = string
  sensitive   = true
}

variable "workshop_organization_id" {
  type        = string
  description = "Equinix Metal organization id"
}

variable "workshop_csv_file" {
  type        = string
  description = "Path to a CSV file containing a list of projects to provision: email,metro,plan. Email address is used as the project name and the collaborator. Metro and plan are used to provision the project."
  default     = "users.csv"
}