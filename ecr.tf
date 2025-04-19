


provider "aws" {
  region = "us-east-1" # Replace with your desired AWS region
}

resource "aws_ecr_repository" "example" {
  name                 = "my-ecr-repo" # Replace with your desired repository name
  image_scanning_configuration {
    scan_on_push = true
  }
  image_tag_mutability = "MUTABLE"
  tags = {
    Environment = "Production"
    Team        = "DevOps"
  }
}

output "ecr_repository_url" {
  value = aws_ecr_repository.example.repository_url
  description = "The URL of the created ECR repository"
}