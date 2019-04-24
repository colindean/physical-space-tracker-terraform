resource "github_team" "triage_team" {
  name        = "${var.phys_tracker_repository}-triage"
  description = "The folks who triage issues in ${var.phys_tracker_repository}"
  privacy     = "closed"
}

resource "github_team_membership" "triage_members" {
  count = "${length(var.triage_team_members)}"

  team_id    = "${github_team.triage_team.id}"
  username = "${var.triage_team_members[count.index]}"
  role     = "member"
}

resource "github_team_membership" "triage_maintainers" {
  count = "${length(var.triage_team_maintainers)}"

  team_id    = "${github_team.triage_team.id}"
  username = "${var.triage_team_maintainers[count.index]}"
  role     = "maintainer"
}

resource "github_team_repository" "some_team_repo" {
  team_id    = "${github_team.triage_team.id}"
  repository = "${data.github_repository.phys_tracker.name}"
  permission = "admin"
}