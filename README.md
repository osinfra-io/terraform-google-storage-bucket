# <img align="left" width="45" height="45" src="https://user-images.githubusercontent.com/1610100/198844818-02e68cb6-f6cc-4747-bf38-cd458a133628.png"> Google Cloud Platform - Storage Bucket Terraform Module

**[GitHub Actions](https://github.com/osinfra-io/terraform-google-storage-bucket/actions):**

[![Terraform Tests](https://github.com/osinfra-io/terraform-google-storage-bucket/actions/workflows/test.yml/badge.svg)](https://github.com/osinfra-io/terraform-google-storage-bucket/actions/workflows/test.yml) [![Dependabot](https://github.com/osinfra-io/terraform-google-storage-bucket/actions/workflows/dependabot.yml/badge.svg)](https://github.com/osinfra-io/terraform-google-storage-bucket/actions/workflows/dependabot.yml)

**[Infracost](https://www.infracost.io):**

[![infracost](https://img.shields.io/endpoint?url=https://dashboard.api.infracost.io/shields/json/cbeecfe3-576f-4553-984c-e451a575ee47/repos/00c5bd62-c59f-44f6-8583-5632a43182fd/branch/65062ab7-4e16-4e82-ba22-22c03a84f6fc)](https://dashboard.infracost.io/org/osinfra-io/repos/00c5bd62-c59f-44f6-8583-5632a43182fd?tab=settings)

💵 Monthly estimates based on Infracost baseline costs.

## Repository Description

Terraform **example** module for a Google Cloud Platform storage bucket.

> [!NOTE]
> We do not recommend consuming this module like you might a [public module](https://registry.terraform.io/browse/modules). It is a baseline, something you can fork, potentially maintain, and modify to fit your organization's needs. Using public modules vs. writing your own has various [drivers and trade-offs](https://docs.osinfra.io/fundamentals/architecture-decision-records/adr-0003) that your organization should evaluate.

## 🔩 Usage

> [!TIP]
> You can check the [tests/fixtures](tests/fixtures) directory for example configurations. These fixtures set up the system for testing by providing all the necessary initial code, thus creating good examples on which to base your configurations.

## <img align="left" width="35" height="35" src="https://github.com/osinfra-io/github-organization-management/assets/1610100/39d6ae3b-ccc2-42db-92f1-276a5bc54e65"> Development

Our focus is on the core fundamental practice of platform engineering, Infrastructure as Code.

>Open Source Infrastructure (as Code) is a development model for infrastructure that focuses on open collaboration and applying relative lessons learned from software development practices that organizations can use internally at scale. - [Open Source Infrastructure (as Code)](https://www.osinfra.io)

To avoid slowing down stream-aligned teams, we want to open up the possibility for contributions. The Open Source Infrastructure (as Code) model allows team members external to the platform team to contribute with only a slight increase in cognitive load. This section is for developers who want to contribute to this repository, describing the tools used, the skills, and the knowledge required, along with Terraform documentation.

See the documentation for setting up a local development environment [here](https://docs.osinfra.io/fundamentals/development-setup).

### 🛠️ Tools

- [infracost](https://github.com/infracost/infracost)
- [pre-commit](https://github.com/pre-commit/pre-commit)
- [pre-commit-terraform](https://github.com/antonbabenko/pre-commit-terraform)
- [terraform-docs](https://github.com/terraform-docs/terraform-docs)

### 📋 Skills and Knowledge

Links to documentation and other resources required to develop and iterate in this repository successfully.

- [storage bucket](https://cloud.google.com/storage/docs/buckets)

### 🔍 Tests

You'll need to be a member of the [platform-contributors](https://groups.google.com/a/osinfra.io/g/platform-contributors) Google Group to run the tests. This group manages access to the resource hierarchy's `Testing/Sandbox` folder. You can request access to this group by opening an issue [here](https://github.com/osinfra-io/google-cloud-hierarchy/issues/new?assignees=&labels=enhancement&projects=&template=add-update-identity-group.yml&title=Add+or+update+identity+group).

```none
cd fixtures/default
```

```none
terraform init
```

```none
terraform test
```

## 📓 Terraform Documentation

A child module automatically inherits its parent's default (un-aliased) provider configurations. The provider versions below are informational only and do **not** need to align with the provider configurations from their parent.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
### Requirements

No requirements.

### Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.26.0 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [google_storage_bucket.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_kms_key_name"></a> [default\_kms\_key\_name](#input\_default\_kms\_key\_name) | The name of the Cloud KMS key that will be used to encrypt objects inserted into this bucket | `string` | `null` | no |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | When deleting a bucket, this boolean option will delete all contained objects | `bool` | `false` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | A map of key/value pairs to assign to the resources being created | `map(string)` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | The location the storage bucket will be created in | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the storage bucket | `any` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The ID of the project in which the resource belongs | `string` | n/a | yes |
| <a name="input_storage_class"></a> [storage\_class](#input\_storage\_class) | The Storage Class of the new bucket. Supported values include: STANDARD, MULTI\_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE | `string` | `"STANDARD"` | no |
| <a name="input_versioning"></a> [versioning](#input\_versioning) | The bucket's Versioning configuration | `bool` | `true` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | Bucket name |
| <a name="output_project"></a> [project](#output\_project) | The ID of the project in which the resource belongs |
| <a name="output_url"></a> [url](#output\_url) | Bucket URL |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
