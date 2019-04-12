data "github_repository" "phys_tracker" {
  full_name = "${var.github_organization}/${var.phys_tracker_repository}"
}
