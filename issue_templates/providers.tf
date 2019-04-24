provider "git" {
  repository_url = "git@${var.github_hostname}:${var.repository_full_name}.git"
}