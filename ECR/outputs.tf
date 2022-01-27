output "repo_arn" {
  description = "Full ARN of the repository"
  value       = aws_ecr_repository.ecr_repo.arn
}

output "registry_id" {
  description = "The registry ID where the repository was created."
  value       = aws_ecr_repository.ecr_repo.registry_id
}