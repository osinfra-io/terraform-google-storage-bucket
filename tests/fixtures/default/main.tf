terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

module "storage_bucket" {
  source = "../../../"

  labels   = local.labels
  location = "US"
  name     = random_id.bucket_name.hex
  project  = var.project
}

resource "random_id" "bucket_name" {
  byte_length = 5
}
