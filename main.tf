# Google Storage Bucket Resource
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket

resource "google_storage_bucket" "this" {

  # In most cases, Cloud Audit Logs is the recommended method for generating logs that track API operations
  # performed in Cloud Storage.

  dynamic "encryption" {
    for_each = var.default_kms_key_name == null ? [] : [var.default_kms_key_name]
    content {
      default_kms_key_name = encryption.value
    }
  }

  force_destroy = var.force_destroy
  labels        = local.labels
  location      = var.location
  name          = var.name
  project       = var.project
  storage_class = var.storage_class

  # Generally, using uniform bucket-level access is recommended, because it unifies and simplifies how you grant access
  # to your Cloud Storage resources.

  uniform_bucket_level_access = true

  versioning {
    enabled = var.versioning
  }
}
