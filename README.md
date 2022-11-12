# <img align="left" width="45" height="45" src="https://user-images.githubusercontent.com/1610100/198844818-02e68cb6-f6cc-4747-bf38-cd458a133628.png"> Google Cloud Platform - Storage Bucket Terraform Module

**[GitHub Actions](https://github.com/osinfra-io/terraform-google-project/actions):**

[![Kitchen Tests](https://github.com/osinfra-io/terraform-google-project/actions/workflows/main.yml/badge.svg)](https://github.com/osinfra-io/terraform-google-project/actions/workflows/main.yml) [![Dependabot](https://github.com/osinfra-io/terraform-google-project/actions/workflows/dependabot.yml/badge.svg)](https://github.com/osinfra-io/terraform-google-project/actions/workflows/dependabot.yml)

**[Bridgecrew](https://bridgecrew.io/):**

[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/osinfra-io/terraform-google-project/cis_gcp)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=osinfra-io%2Fterraform-google-project&benchmark=CIS+GCP+V1.1)

Terraform example module for a Google Cloud Platform project.

We do not recommend consuming this module like you might a [public module](https://registry.terraform.io/browse/modules). Its purpose is to be a baseline, something you can fork and potentially maintain on your own and modify to fit your organization's needs. Using public modules vs. writing your own have various drivers and trade-offs that your organization should evaluate.

## Usage

We do not pin modules to versions in our documentation examples because of the difficulty of keeping the versions in sync with the latest released versions. We highly recommend pinning a version in your root module so that your infrastructure remains stable.

You can check the [test/fixtures](test/fixtures/) directory for example configurations. These fixtures set up the system for the testing process by providing it with all the necessary code to initialize it, thus creating good examples to base your configurations on.

Here is an example of a basic configuration:

```hcl
module "storage_bucket" {
  source  = "git@github.com:osinfra-io/terraform-google-storage-bucket.git?ref=v0.0.0"

  location   = "us-east1"
  name       = "example"
  project_id = "example-project"
}
```
## Terraform Documentation

A child module automatically inherits its parent's default (un-aliased) provider configurations. The provider versions below are informational only and do **not** need to align with the provider configurations from its parent.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
### Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider_google) | 4.41.0 |

### Resources

| Name | Type |
|------|------|
| [google_storage_bucket.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input_location) | The location the storage bucket will be created in | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input_name) | The suffix to use for the storage bucket name | `any` | n/a | yes |
| <a name="input_project"></a> [project](#input_project) | The ID of the project in which the resource belongs | `string` | n/a | yes |
| <a name="input_default_kms_key_name"></a> [default_kms_key_name](#input_default_kms_key_name) | The name of the Cloud KMS key that will be used to encrypt objects inserted into this bucket | `string` | `null` | no |
| <a name="input_force_destroy"></a> [force_destroy](#input_force_destroy) | When deleting a bucket, this boolean option will delete all contained objects | `bool` | `false` | no |
| <a name="input_labels"></a> [labels](#input_labels) | A map of labels to add to all resources | `map(string)` | `null` | no |
| <a name="input_storage_class"></a> [storage_class](#input_storage_class) | The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE | `string` | `"STANDARD"` | no |
| <a name="input_versioning"></a> [versioning](#input_versioning) | The bucket's Versioning configuration | `bool` | `true` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output_name) | Bucket name |
| <a name="output_project"></a> [project](#output_project) | The ID of the project in which the resource belongs |
| <a name="output_url"></a> [url](#output_url) | Bucket URL |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Module Development

See the documentation for setting up a local development environment [here](https://docs.osinfra.io).

Tools in use:

- [checkov](https://github.com/bridgecrewio/checkov)
- [chef-inspec](https://github.com/inspec/inspec)
- [infracost](https://github.com/infracost/infracost)
- [inspec-gcp](https://github.com/inspec/inspec-gcp)
- [kitchen-terraform](https://github.com/newcontext-oss/kitchen-terraform)
- [pre-commit](https://github.com/pre-commit/pre-commit)
- [pre-commit-terraform](https://github.com/antonbabenko/pre-commit-terraform)
- [terraform-docs](https://github.com/terraform-docs/terraform-docs)

### Tests

```none
bundle exec kitchen converge
bundle exec kitchen verify
bundle exec kitchen destroy
```
