# Input Variables
# https://www.terraform.io/language/values/variables

variable "default_kms_key_name" {
  description = "The name of the Cloud KMS key that will be used to encrypt objects inserted into this bucket"
  type        = string
  default     = null
}

variable "force_destroy" {
  description = "When deleting a bucket, this boolean option will delete all contained objects"
  type        = bool
  default     = false
}

variable "labels" {
  description = "A map of key/value pairs to assign to the resources being created"
  type        = map(string)
  default     = {}
}

variable "location" {
  description = "The location the storage bucket will be created in"
  type        = string
}

variable "name" {
  description = "The name of the storage bucket"
}

variable "project" {
  description = "The ID of the project in which the resource belongs"
  type        = string
}

variable "storage_class" {
  description = "The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE"
  type        = string
  default     = "STANDARD"
}

variable "versioning" {
  description = "The bucket's Versioning configuration"
  type        = bool
  default     = true
}
