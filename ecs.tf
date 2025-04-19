provider "aws" {
  region = "us-east-1" # Replace with your desired AWS region
}

# Create an ECS Cluster
resource "aws_ecs_cluster" "example" {
  name = "my-ecs-cluster" # Replace with your desired cluster name
  capacity_providers = ["FARGATE", "FARGATE_SPOT"]

  tags = {
    Environment = "Production"
    Team        = "DevOps"
  }
}

# Optional: Output the ECS Cluster Name
output "ecs_cluster_name" {
  value       = aws_ecs_cluster.example.name
  description = "The name of the ECS cluster"
}