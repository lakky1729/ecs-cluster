variable "region" {
  description = "AWS region where resources will be created"
  default     = "us-west-2"
}

variable "ecs_cluster_name" {
  description = "Name for the ECS cluster"
  default     = "my-ecs-cluster"
}

variable "task_family" {
  description = "Family name for the ECS task definition"
  default     = "my-task-family"
}

variable "container_name" {
  description = "Name for the ECS container"
  default     = "my-container"
}

variable "container_image" {
  description = "Docker image for the ECS container"
  default     = "nginx:latest"
}

variable "container_port" {
  description = "Port to expose on the ECS container"
  default     = 80
}

variable "subnet_cidr_blocks" {
  description = "List of CIDR blocks for AWS subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"] # Add or modify CIDR blocks as needed
}

variable "subnet_count" {
  description = "Number of subnets for ECS tasks"
  default     = 2
}
