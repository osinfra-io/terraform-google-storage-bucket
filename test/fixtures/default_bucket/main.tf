module "storage_bucket" {

  # This module will be consumed using the source address of the github repo and not the "../../../" used in this test.
  # source = "git@github.com:osinfra-io/terraform-google-storage-bucket?ref=v0.0.0"

  source = "../../../"

  location = "US"
  name     = "test"
  project  = "devops-testing-tf67de-sb"
}
