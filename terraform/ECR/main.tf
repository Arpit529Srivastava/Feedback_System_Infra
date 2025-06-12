// this contains terraform script for creating Elastic Container Registery

provider "aws" {
  region = "us-east-1"  
}

// Frontend ECR Repository
resource "aws_ecr_repository" "frontend" {
  name                 = "feedback-system-frontend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "feedback-system-frontend"
    Environment = "production"
  }
}

// Backend ECR Repository
resource "aws_ecr_repository" "backend" {
  name                 = "feedback-system-backend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "feedback-system-backend"
    Environment = "production"
  }
}
