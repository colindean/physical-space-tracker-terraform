#!/usr/bin/env bash

require() {
  if [[ -z "$(command -v "${1}")" ]]; then
    echo "You need to install ${1}."
    exit 1
  fi
}

require "jq"
require "curl"

if [[ -z "${GITHUB_TOKEN}" ]] || [[ -z "${GITHUB_HOST}" ]] || [[ -z "${GITHUB_REPO}" ]] || [[ -z "${GITHUB_ORG}" ]]; then
  echo "Needs more configuration!"
  echo "Check that the appropriate envvars are set: GITHUB_TOKEN (${#GITHUB_TOKEN} chars), GITHUB_HOST (${GITHUB_HOST}), GITHUB_ORG (${GITHUB_ORG}), GITHUB_REPO (${GITHUB_REPO})"
  exit 2
fi

for label in $(curl -H "Authorization: token ${GITHUB_TOKEN}" "https://${GITHUB_HOST}/api/v3/repos/${GITHUB_ORG}/${GITHUB_REPO}/labels" | jq -r .[].name | sed -e 's/ /\%20/g'); do
  echo "Deleting ${label}"
  curl \
    -H "Authorization: token ${GITHUB_TOKEN}" \
    -X DELETE \
    "https://${GITHUB_HOST}/api/v3/repos/${GITHUB_ORG}/${GITHUB_REPO}/labels/${label}"
done

