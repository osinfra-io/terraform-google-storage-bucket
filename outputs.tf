# Terraform Output Values
# https://www.terraform.io/language/values/outputs

output "name" {
  description = "Bucket name"
  value       = google_storage_bucket.this.name
}

output "url" {
  description = "Bucket URL"
  value       = google_storage_bucket.this.url
}
