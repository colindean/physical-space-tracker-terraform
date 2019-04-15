locals {
  color_affects = "FF0000"
  color_action  = "0000FF"
  color_nature  = "00FF00"
  color_room    = "00FFFF"
  color_org     = "DDDDDD"
}

##
# Affects
##
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

##
# Nature
##
resource "github_issue_label" "nature_av" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_nature}"
  name        = "Nature: AudioVisual"
  description = "Problems related to A/V equipment like projectors and TVs"
}

resource "github_issue_label" "nature_doors" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_nature}"
  name        = "Nature: Doors"
  description = "Problems related to physical security features like doors."
}

resource "github_issue_label" "nature_lighting" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_nature}"
  name        = "Nature: Lighting"
  description = "Problems related to electric illumination, or lack thereof, maybe fixed by an electrician."
}

resource "github_issue_label" "nature_plumbing" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_nature}"
  name        = "Nature: Plumbing"
  description = "Problems that a plumber would have to fix."
}

##
# Action
##
resource "github_issue_label" "action_facilities" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_action}"
  name        = "Action: Company"
  description = "Problems that the company needs to resolve."
}

resource "github_issue_label" "action_landlord" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_action}"
  name        = "Action: Landlord"
  description = "Problems that the landlord needs to resolve."
}

resource "github_issue_label" "action_vendor" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_action}"
  name        = "Action: Vendor"
  description = "Problems to be resolved by a vendor with which the company has a relationship."
}

##
# Organizational labels
##
resource "github_issue_label" "org_duplicate" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_org}"
  name        = "Duplicate"
  description = "Problems that have been reported recently multiple times"
}

resource "github_issue_label" "org_invalid" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_org}"
  name        = "Invalid"
  description = "Problems that were invalidated."
}

resource "github_issue_label" "org_wontfix" {
  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_org}"
  name        = "Won't fix"
  description = "Problems that cannot be addressed, we'll just have to live with them!"
}

resource "github_issue_label" "room_all" {
  count = "${length(var.room_list)}"

  repository  = "${data.github_repository.phys_tracker.name}"
  color       = "${local.color_room}"
  name        = "Room: ${var.room_list[count.index]}"
  description = "Problems affecting ${var.room_list[count.index]}"
}
