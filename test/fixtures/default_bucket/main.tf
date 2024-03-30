module "storage_bucket" {

  # This module will be consumed using the source address of the github repo and not the "../../../" used in this test.
  # source = "github.com/osinfra-io/terraform-google-storage-bucket?ref=v0.0.0"

  source = "../../../"

  labels = {
    cost-center = "x000"
    env         = "sb"
    repository  = "terraform-google-storage-bucket"
    team        = "testing"
  }

  location = "US"
  name     = random_id.bucket_name.hex
  project  = var.project
}

resource "random_id" "bucket_name" {
  byte_length = 5
}
