# <img align="left" width="45" height="45" src="https://user-images.githubusercontent.com/1610100/197364582-9f8dd871-4833-464a-b55f-fb6d804870f9.png"> Google Cloud Platform - Hierarchy

**[GitHub Actions](https://github.com/osinfra-io/google-cloud-hierarchy/actions):**

[![Dependabot](https://github.com/osinfra-io/google-cloud-hierarchy/actions/workflows/dependabot.yml/badge.svg)](https://github.com/osinfra-io/google-cloud-hierarchy/actions/workflows/dependabot.yml)

**[Bridgecrew](https://www.bridgecrew.cloud/projects?types=Passed&repository=osinfra-io%2Fgoogle-cloud-hierarchy&branch=main):**

[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/osinfra-io/google-cloud-hierarchy/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=osinfra-io%2Fgoogle-cloud-hierarchy&benchmark=INFRASTRUCTURE+SECURITY) [![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/osinfra-io/google-cloud-hierarchy/cis_gcp)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=osinfra-io%2Fgoogle-cloud-hierarchy&benchmark=CIS+GCP+V1.1)

**[Infracost](https://www.infracost.io):**

[![infracost](https://img.shields.io/endpoint?label=Monthly%20Cost&url=https://dashboard.api.infracost.io/shields/json/cbeecfe3-576f-4553-984c-e451a575ee47/repos/57318eb1-8a72-432f-8305-4ac7b10c9495/branch/0049fa37-5530-460c-9f8a-ab4824107d09)](https://dashboard.infracost.io/org/osinfra-io/repos/57318eb1-8a72-432f-8305-4ac7b10c9495)

Monthly cost estimates for this module based off these usage values: [infracost-usage.yml](global/infra/infracost-usage.yml)

## Repository Description

This repository creates a resource hierarchy that aligns with our [Google Cloud landing zone platform](https://docs.osinfra.io/google-cloud-platform/landing-zone) design. A landing zone should be a prerequisite to deploying enterprise workloads in a cloud environment.

## <img align="left" width="35" height="35" src="https://user-images.githubusercontent.com/1610100/209340481-2a74c148-f10d-4192-8eae-c88645663824.png"> Team Topologies

>Simple but comprehensive information for the platform provides a single point of entry for anyone wanting to know more about the services, report an issue or find out the current status, roadmap, and so on. - [Team Topologies: Thin Platform Template](https://github.com/TeamTopologies/Thin-Platform-template)

### Platform Information

- Documentation: [docs.osinfra.io](https://docs.osinfra.io/google-cloud-platform/landing-zone)
- Live status page:

### Platform Dependencies

- [google-cloud-audit-logging](https://github.com/osinfra-io/google-cloud-audit-logging): Google Cloud Platform (GCP) services write audit logs that record administrative activities and accesses within your Google Cloud Platform (GCP) resources. [Audit logs](https://cloud.google.com/logging/docs/audit) help you answer "who did what, where, and when?" within your Google Cloud resources with the same level of transparency as in on-premises environments. Enabling audit logs helps your security, auditing, and compliance entities monitor Google Cloud data and systems for possible vulnerabilities or external data misuse.
- [google-cloud-terraform-backend](https://github.com/osinfra-io/google-cloud-terraform-backend): Terraform uses persisted state data to keep track of the resources it manages. Most non-trivial Terraform configurations use a backend to store state remotely. This lets multiple people access the state data and work together on that collection of infrastructure resources.
- [google-cloud-workload-identity](https://github.com/osinfra-io/google-cloud-workload-identity): With [workload identity federation](https://cloud.google.com/iam/docs/workload-identity-federation), you can use Identity and Access Management (IAM) to grant external identities IAM roles, including the ability to impersonate service accounts. This lets you access resources directly, using a [short-lived access token](https://cloud.google.com/iam/docs/create-short-lived-credentials-direct), and eliminates the maintenance and security burden associated with service account keys.

### Service Interfaces

- [Add or update identity group](https://github.com/osinfra-io/google-cloud-hierarchy/issues/new?assignees=&labels=enhancement&template=add-update-identity-group.yml&title=Add+or+update+identity+group)
- [Add or update folder](https://github.com/osinfra-io/google-cloud-hierarchy/issues/new?assignees=&labels=enhancement&template=add-update-folder.yml&title=Add+or+update+folder)

### Response Times

- Responsible team: [Google Cloud Landing Zone Platform](https://github.com/orgs/osinfra-io/teams/platform-google-cloud-landing-zone)
- Response time for incidents: `60 minutes`
- Response time for other incidents: `120 minutes`
- Response time for support:  `60 minutes`
- Response time for feedback: `30 minutes`

### Roadmap

- Link to roadmap: [GitHub Project](https://github.com/orgs/osinfra-io/projects/5/views/2)

### Communication Channels

#### To report a possible incident

Contact exclusively via:

- Google Chat: [Google Cloud Landing Zone Platform](https://chat.google.com/room/AAAAGFnzIKw?cls=7)
- Phone number:

#### To ask for support or provide feedback

Contact via any of these:

- Google Chat: [Google Cloud Platform](https://chat.google.com/room/AAAAQV2ucwU?cls=7)
- Email address: [google-cloud-platform-team@osinfra.io](mailto:google-cloud-platform-team@osinfra.io)
- Phone number:
- Office hours (EST): `Weekdays 5:00 PM - 10:00 PM` `Weekends 8:00 AM - 5:00 PM`

## <img align="left" width="35" height="35" src="https://user-images.githubusercontent.com/1610100/209029142-410349b7-4b22-40a9-9d4d-729f07e2b4a2.png"> Development

>Open Source Infrastructure (as code) is a development model for infrastructure that focuses on open collaboration applying relative lessons learned from software development practices that organizations can use internally at scale. - [Open Source Infrastructure (as Code)](https://www.osinfra.io)

To avoid slowing down [stream-aligned](https://teamtopologies.com/key-concepts) teams, we want to open up the possibility for contributions. The Open Source Infrastructure (as Code) model allows team members external to the platform team to contribute with only a slight increase in cognitive load. This section is for developers who want to contribute to this repository describing the tools used, the skills, and the knowledge required, along with Terraform documentation.

See the documentation for setting up a local development environment [here](https://docs.osinfra.io/development-setup).

### Tools

- [checkov](https://github.com/bridgecrewio/checkov)
- [pre-commit](https://github.com/pre-commit/pre-commit)
- [pre-commit-terraform](https://github.com/antonbabenko/pre-commit-terraform)
- [terraform-docs](https://github.com/terraform-docs/terraform-docs)

### Skills and Knowledge

Links to documentation and other resources required to develop and iterate in this repository successfully.

- [Google Cloud Platform resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy)
- [Google Cloud Platform groups](https://cloud.google.com/identity/docs/groups)
- [Google Cloud Platform IAM](https://cloud.google.com/iam/docs/overview)

### Terraform Documentation

[**Global Infrastructure**](global/infra/README.md)
