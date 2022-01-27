provider "aws" {
  region = "us-east-1"
}

module "ecr" {
  source = "./ECR"

  ecr_name       = "ecr"
  tag_mutability = "MUTABLE"
  scan_on_push   = false

  ecr_pull_perms = [
    "arn:aws:iam::742381385220:user/test",
    "arn:aws:iam::742381385220:user/test1",

  ]
}