# Terraform Output Values
# https://www.terraform.io/language/values/outputs

output "bucket_name" {
  value = module.storage_bucket.name
}

output "project" {
  value = module.storage_bucket.project
}
