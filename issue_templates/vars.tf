variable "triage_label" {
  default = "triage"
  type = "string"
}
variable "triage_team_slug" {
  type = "string"
}
variable "triage_lead_username" {
  type = "string"
}
variable "github_hostname" {
  type = "string"
  default = "github.com"
}
variable "repository_full_name" {
  type = "string"
}