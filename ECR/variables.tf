variable "ecr_name" {
  description = "ECR repo name."
  type        = string
  default     = "ecr"
}

variable "tag_mutability" {
  description = "The tag mutability setting for the repository. Must be one of: <MUTABLE> or <IMMUTABLE>. Defaults to <MUTABLE>."
  type        = string
  default     = "MUTABLE"
}

variable "scan_on_push" {
  description = "Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false)."
  type        = string
  default     = false
}


variable "ecr_pull_perms" {
  description = "Users with permission to pulling image."
}
