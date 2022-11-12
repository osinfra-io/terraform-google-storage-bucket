# Google Storage Bucket Resource
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket

resource "google_storage_bucket" "this" {

  # checkov:skip=CKV_GCP_62: In most cases, Cloud Audit Logs is the recommended method for generating logs that track API operations
  # performed in Cloud Storage.

  force_destroy               = var.force_destroy
  labels                      = var.labels
  location                    = var.location
  name                        = lower("${var.project_id}-${var.name}")
  project                     = var.project_id
  storage_class               = var.storage_class
  uniform_bucket_level_access = true

  versioning {
    enabled = var.versioning
  }
}
