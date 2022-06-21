variable "project" {}
variable "frontend_domain" {}
variable "location" {}

variable "acls" {
  description = "Bucket ACL rules"
  type        = list(string)
  default     = ["READER:allUsers"]
}

variable "cors_origins" {
  description = "List of allowed origins for CORS"
  type        = list(string)
  default     = ["*"]
}

variable "cors_methods" {
  description = "List of allowed methods for CORS"
  type        = list(string)
  default     = ["GET", "PUT", "POST", "DELETE"]
}

variable "cors_headers" {
  description = "List of allowed headers for CORS"
  type        = list(string)
  default     = ["*"]
}

variable "cors_max_age" {
  description = "Value in seconds of max-age header for CORS preflight"
  type        = number
  default     = 3600
}

variable "cloud_build_name" {
  description = "Cloud build default name"
  type        = string
  default     = "frontend-cloud-build"
}

variable "cloud_build_filename" {
  description = "Cloud build default filename"
  type        = string
  default     = "website/cloudbuild.yaml"
}

variable "cloud_build_repo_name" {
  description = "Cloud build default repository url"
  type        = string
  default     = "https://github.com/edamm21/TP-Cloud"
}