#!/bin/bash
AWX_URL="http://172.30.21.12"
AWX_USERNAME="$AWX_USER"
AWX_PASSWORD="$AWX_PASS"
AWX_PROJECT_NAME="test-api-project"
AWX_ORGANIZATION_ID="1"
CREDENTIAL_ID="58"
SCM_URL="http://10.1.30.29/root/windows_iis_website_deployment.git"
 
read -r -d '' JSON_DATA << EOF
{
  "allow_override": true,
  "name": "$AWX_PROJECT_NAME",
  "organization": $AWX_ORGANIZATION_ID,
  "scm_type": "git",
  "credential": "$CREDENTIAL_ID",
  "scm_url": "$SCM_URL"
}
EOF
 
curl -k -f -H "Content-Type: application/json" -X POST -d "$JSON_DATA" -u $AWX_USERNAME:$AWX_PASSWORD $AWX_URL/api/v2/projects/
