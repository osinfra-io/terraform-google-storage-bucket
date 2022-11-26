# Backend Configuration
# https://www.terraform.io/language/settings/backends/configuration

terraform {

  # Google Cloud Storage
  # https://www.terraform.io/language/settings/backends/gcs

  backend "gcs" {
    bucket = "shared-terraform-tf412f-sb-kitchen"
    prefix = "terraform-google-storage-bucket"
  }
}
