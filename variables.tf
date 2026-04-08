variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "devops-trial"
}

variable "db_password" {
  description = "RDS root password"
  type        = string
  sensitive   = true
}
