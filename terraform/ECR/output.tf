output "frontend_repository_url" {
  value = aws_ecr_repository.frontend.repository_url
  description = "The URL of the frontend ECR repository"
}

output "backend_repository_url" {
  value = aws_ecr_repository.backend.repository_url
  description = "The URL of the backend ECR repository"
}

output "frontend_repository_arn" {
  value = aws_ecr_repository.frontend.arn
  description = "The ARN of the frontend ECR repository"
}

output "backend_repository_arn" {
  value = aws_ecr_repository.backend.arn
  description = "The ARN of the backend ECR repository"
}
