# Cloud Engineering Library

**My personal collection of cloud automation scripts and IaC templates**

```
┌──────────────────────────────────────────────┐
│  WHAT THIS IS                                │
├──────────────────────────────────────────────┤
│  • Reusable scripts for AWS/Azure/GCP       │
│  • Terraform modules, K8s configs, Lambda   │
│  • Ansible playbooks, Docker compose files  │
│  • Built over 3+ years of cloud work        │
│  • Reference library, not a product         │
└──────────────────────────────────────────────┘
```

## Why This Exists

After 3+ years working with cloud infrastructure, I kept rewriting the same scripts. "How do I set up a VPC with Terraform again?" "What's the syntax for CloudWatch alarms?" "Where's that Lambda function I wrote for S3 event processing?"

This repo is my personal toolkit. It's organized by tool/platform, not by project. When I need to spin up monitoring, I grab the Grafana dashboard config. When I need IAM automation, I pull the user management script.

It's not comprehensive. It's not enterprise-grade. It's just the stuff I've actually used and found worth keeping.

## What's Inside

**Infrastructure as Code:**
- `terraform/` - VPC setup, security groups, networking configs
- `ansible/` - Server hardening, app deployment playbooks
- `puppet/` - Nginx management (don't use Puppet much anymore)
- `chef/` - Web server cookbooks (mostly legacy)

**Container & Orchestration:**
- `docker/` - Dockerfiles and compose files for common stacks
- `kubernetes/` - Deployments, services, ingress configs (basic stuff, not production Helm charts)

**Cloud Platforms:**
- `aws/` - EC2, S3, Lambda automation scripts
- `azure/` - Resource group management, some ARM templates
- `gcp/` - Compute Engine scripts, Cloud Functions

**CI/CD:**
- `cicd/github-actions/` - Deployment workflows
- `cicd/jenkins/` - Jenkinsfiles (older projects)

**Automation:**
- `serverless/lambda/` - Python Lambda functions (S3 events, EC2 autoscaling)
- `api-scripts/` - REST API clients, Swagger specs
- `automation-scripts/` - General Python/Bash scripts for cloud tasks
- `iam-automation/` - User/role management scripts
- `backup-recovery/` - Database backup automation

**Monitoring & Security:**
- `monitoring-logging/` - CloudWatch alarms, Grafana dashboards
- `security/` - OAuth token generation, RBAC policies
- `network-config/` - VPN setup, firewall rules

## Organization

Everything is organized by **tool/technology**, not by project. The directory names match what I'd search for:

```
CloudEngLibrary/
├── terraform/          # When I need Terraform templates
├── kubernetes/         # When I need K8s configs
├── aws/               # When I need AWS-specific scripts
├── serverless/        # When I need Lambda functions
└── ...
```

Some directories have minimal files (Chef, Puppet) because I don't use those tools much anymore. I kept them for reference.

## Usage

**This isn't a framework.** There's no installer, no CLI, no package to import. Just copy what you need.

Want the VPC setup?
```bash
cp terraform/vpc_setup.tf ~/my-project/
# Edit variables, run terraform apply
```

Need a Lambda function for S3 events?
```bash
cp serverless/lambda/s3_event_trigger.py ~/my-lambda/
# Modify logic, zip it, upload to AWS
```

Most scripts assume you have AWS/GCP/Azure CLI configured with proper credentials.

## What This Isn't

**Not production-ready:** These scripts work for my use cases. They don't have comprehensive error handling, logging, or tests. Use them as starting points, not drop-in solutions.

**Not best practices:** Some scripts use hardcoded values. Some use outdated patterns. I kept them because they work for quick prototyping.

**Not complete:** There are gaps. No ECS configs, minimal GCP content, no multi-region Terraform. I add things as I need them.

## Real-World Use

I use this library weekly for:
- Spinning up test environments (Terraform VPC + Docker containers)
- Lambda functions for personal projects (S3 triggers, scheduled tasks)
- CloudWatch alarms when I forget to set them up initially
- Kubernetes configs for small side projects

The most-used files:
- `terraform/vpc_setup.tf` - Copied 10+ times
- `serverless/lambda/s3_event_trigger.py` - Base template for event-driven automation
- `monitoring-logging/cloudwatch/alarm-setup.py` - Set up billing/resource alarms fast
- `docker/docker-compose.yml` - Local dev environment boilerplate

## Contributing

This is a personal repo, but if you find something useful or spot an error, feel free to open an issue or PR. Just know that I'm optimizing for "works for me" over "works for everyone."

---

**Started:** ~2021 (some scripts date back to my sysadmin days)  
**Last major update:** October 2024  
**Status:** Active reference library
