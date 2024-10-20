#!/bin/bash

declare -A DIR_STRUCTURE=(
  ["Cloud-Cost-Optimization-Scripts"]=".gitkeep"
  ["Event-Driven-Automation"]=".gitkeep"
  ["Python-Automation-SDK-Scripts"]="ansible api-scripts/python api-scripts/swagger api-scripts/rest api-scripts/graphql postman python .gitkeep"
  ["automation-scripts"]="infrastructure-automation python scheduled-tasks .gitkeep"
  ["aws"]="cloudformation ec2 iam lambda monitoring s3 .gitkeep"
  ["azure"]="arm-templates azure-functions monitoring storage virtual-machines .gitkeep"
  ["backup-recovery"]="automation .gitkeep"
  ["bash-shell-scripts"]=".gitkeep"
  ["chef"]="cookbooks .gitkeep"
  ["cicd"]="github-actions gitlab-ci jenkins .gitkeep"
  ["database-automation"]=".gitkeep"
  ["docker"]="Dockerfile .gitkeep"
  ["gcp"]="bigquery cloud-storage compute-engine monitoring .gitkeep"
  ["iam-automation"]="user-management .gitkeep"
  ["kubernetes"]="deployments helm-charts ingress services .gitkeep"
  ["monitoring-logging"]="aws-cloudwatch azure-monitor grafana .gitkeep"
  ["network-config"]="vpn .gitkeep"
  ["powershell"]=".gitkeep"
  ["puppet"]="manifests modules .gitkeep"
  ["security"]="backup-and-recovery iam-management vulnerability-scanning .gitkeep"
  ["serverless"]="lambda .gitkeep"
  ["terraform"]="aws azure gcp modules .gitkeep"
  ["utilities"]="bash-scripts python-scripts .gitkeep"
)

for dir in "${!DIR_STRUCTURE[@]}"; do
  mkdir -p "$dir"
  for subdir in ${DIR_STRUCTURE[$dir]}; do
    mkdir -p "$dir/$subdir"
  done
done

echo "Directory structure updated successfully!"

