# Terraform AWS ECR

## This module creates ECR repository with policy for it.

## **Usage**
Then perform the following commands on the root folder:
- `terraform init` terraform initialization
- `terraform plan` to see the infrastructure plan
- `terraform apply` to apply ingrastructure build
- `terraform destroy` to destroy the build infrastructure

```terraform
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
```