# Required Providers
# https://opentofu.org/docs/language/providers/requirements

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

module "storage_bucket" {
  source = "../../../"

  labels = {
    "mock-key" = "mock-value"
  }

  location = "US"
  name     = random_id.bucket_name.hex
  project  = var.project
}

resource "random_id" "bucket_name" {
  byte_length = 5
}
