# AWS Terraform + Ansible DevOps Project

## Overview
Fully automated DevOps project that provisions AWS infrastructure and deploys a containerized application using a single command.

Infrastructure is created with Terraform and configured using Ansible.

## Tech Stack
- Terraform (Infrastructure as Code)
- Ansible (Configuration Management)
- Docker (Containerization)
- AWS (EC2, VPC, RDS PostgreSQL)

## Architecture
- VPC with public subnet and Internet Gateway
- EC2 Ubuntu instance (application server)
- Security Groups (SSH + HTTP access)
- RDS PostgreSQL database
- Nginx running in Docker container

## Deployment

```bash
./deploy.sh
