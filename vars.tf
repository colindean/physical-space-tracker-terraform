variable "phys_tracker_repository" {
  type = "string"
}

variable "github_organization" {
  type = "string"
}

variable "github_token" {
  type = "string"
}

variable "github_api_base_url" {
  type    = "string"
  default = "https://github.com/api/v3/"
}

variable "room_list" {
  type = "list"
  default = []
}

variable "triage_team_members" {
  type = "list"
  default = []
}

variable "triage_team_maintainers" {
  type = "list"
  default = []
}