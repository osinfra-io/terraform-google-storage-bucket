module "storage_bucket" {

  # This module will be consumed using the source address of the github repo and not the "../../../" used in this test.
  # source = "github.com/osinfra-io/terraform-google-storage-bucket?ref=v0.0.0"

  source = "../../../"

  location = "US"
  name     = random_id.bucket_name.hex

  # Update this project when testing infrastructure is created

  project = "testing-workflow-tff8-sb"
}

resource "random_id" "bucket_name" {
  byte_length = 5
}
