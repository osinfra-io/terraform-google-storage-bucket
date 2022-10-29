# Terraform Output Values
# https://www.terraform.io/language/values/outputs

output "bucket_name" {
  value = module.storage_bucket.name
}

output "project_id" {
  value = module.storage_bucket.project_id
}
