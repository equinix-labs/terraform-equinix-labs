# Module vars
variable "metal_organization_id" {
  type        = string
  description = "Equinix Metal organization id"
}

variable "csv_file" {
  type        = string
  description = "Path to a CSV file containing a list of projects to provision: email,metro,plan. Email address is used as the project name and the collaborator. Metro and plan are used to provision the project."
  default     = "users.csv"
}
