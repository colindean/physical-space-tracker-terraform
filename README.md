# Automated setup of an office tracker repository

## Pre-requisites

* [Terraform](https://terraform.io), probably installed via
    [tfenv](https://github.com/tfutils/tfenv)
* [curl](https://curl.haxx.se)
* [jq](https://stedolan.github.io/jq/)

These are installable on macOS with [Homebrew](https://brew.sh) by running
`brew bundle` in this directory.

## Steps

_⚠ You must be an organization admin to add people to the triage team._ 
_That's why the default has no members!_

1. Create a new repository in your GitHub organization.
1. Set the environment variables in the table below.
1. Run `deleteLabels.sh` to remove all existing labels, such as defaults.
1. Set the configuration vars in `terraform.tfvars`. See
   `terraform.tfvars.sample` for a sample.
1. `terraform plan`
1. `terraform apply`

If you want to also set up an issue template, you can use the module in
`issue_templates` but you will need to install the `git` provider for
Terraform. See the README in that directory for more information.

## Environment variables

|Name|Purpose|
|----|-------|
|GITHUB_TOKEN|An authentication token for your GitHub instance|
|GITHUB_HOST|The URL for Github, generally github.com or git.example.com|
|GITHUB_ORG|The organization in which the repo was created.|
|GITHUB_REPO|The repository's name.|

