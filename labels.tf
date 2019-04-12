locals {
  color_affects = "FF0000"
  color_action  = "0000FF"
  color_nature  = "00FF00"
  color_room    = "00FFFF"
}

resource "github_issue_label" "affects_usability" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_affects}"
  name        = "Affects: Usability"
  description = "counter-intuitive interfaces or things that needed to be explained through signage."
}

resource "github_issue_label" "affects_presentations" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_affects}"
  name        = "Affects: Presentations"
  description = "Audio-visual nature and inhibit collaboration in conference rooms or other meeting spaces."
}

resource "github_issue_label" "affects_cleanliness" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_affects}"
  name        = "Affects: Cleanliness"
  description = "Issues with regular, periodic cleaning or a mess than someone had made and not redded up."
}

resource "github_issue_label" "affects_Health" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_affects}"
  name        = "Affects: Health"
  description = "Serious cleanliness issues generally representing biohazards of some kind, e.g. a lack of soap."
}

resource "github_issue_label" "affects_safety" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_affects}"
  name        = "Affects: Safety"
  description = "These are the kind of thing that OSHA or BWC would care about."
}

resource "github_issue_label" "affects_pride" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_affects}"
  name        = "Affects: Pride"
  description = "'Broken windows' that are all too often neglected until there are a lot of them."
}
