data "template_file" "generic_issue_template" {
  template = "${file("generic_issue_template.md")}"
  vars = {
    triage_label = "${var.triage_label}"
    triage_team = "${var.triage_team_slug}"
    triage_lead_username = "${var.triage_lead_username}"
  }
}

resource "git_file" "generic_issue_template" {
  contents = "${data.template_file.generic_issue_template.rendered}"
  path = ".github/ISSUE_TEMPLATE/${data.template_file.generic_issue_template.filename}"
}

