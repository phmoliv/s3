variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "environment" {
  type        = string
  description = "Environment name"
}

variable "versioning_enabled" {
  type        = string
  default     = "Disabled"
  description = "Enabled, Suspended or Disabled"
}

variable "enable_encryption" {
  type        = bool
  default     = true
  description = "Enable default AES256 encryption"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to apply to the bucket"
}

#variable "cloudfront_oai_canonical_user_id" {
#  type        = string
#  default     = ""
#  description = "The canonical user ID of the CloudFront Origin Access Identity to grant GetObject permissions"
#}
