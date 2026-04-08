# DevOps Trial: AWS Infrastructure Deployment

This project provisions a production-ready infrastructure on AWS, mapping containerized compute requirements to **AWS ECS with Fargate**, a fully managed database with **AWS RDS**, and a regional **Application Load Balancer**.

## Architecture Overview
- **Networking (VPC)**: Custom VPC with public subnets across 2 Availability Zones.
- **Compute (ECS Fargate)**: Serverless container compute (AWS equivalent to CloudRun).
- **Database (RDS)**: Managed PostgreSQL 15 instance.
- **Load Balancer (ALB)**: Public-facing ALB routing traffic to Fargate tasks.

## Deployment Details
| Resource | Value |
| :--- | :--- |
| **AWS Region** | `us-east-1` |
| **Project Name** | `devops-trial` |
| **DB Engine** | PostgreSQL 15 |
| **ALB Endpoint** | [http://devops-trial-alb-111971301.us-east-1.elb.amazonaws.com](http://devops-trial-alb-111971301.us-east-1.elb.amazonaws.com) |
| **DB Endpoint** | `devops-trial-db.csdi2ci6o56m.us-east-1.rds.amazonaws.com:5432` |

## How to Manage the Infrastructure

### 1. Variables and Secrets
Before running any commands, ensure your `terraform.tfvars` file is present and contains your DB password:
```hcl
aws_region   = "us-east-1"
project_name = "devops-trial"
db_password  = "YourSecurePasswordHere"
