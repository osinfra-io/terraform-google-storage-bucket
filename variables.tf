# Input Variables
# https://www.terraform.io/language/values/variables

variable "force_destroy" {
  description = "When deleting a bucket, this boolean option will delete all contained objects"
  type        = bool
  default     = false
}

variable "labels" {
  description = "A map of labels to add to all resources"
  type        = map(string)
  default     = null
}

variable "location" {
  description = "The location the storage bucket will be created in"
  type        = string
}

variable "name" {
  description = "The suffix to use for the storage bucket name"
}

variable "project_id" {
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
