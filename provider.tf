provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
  base_url     = "${var.github_api_base_url}"
}
