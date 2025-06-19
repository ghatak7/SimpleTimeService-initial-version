variable "region" {
  default = "us-east-1"
}

variable "app_name" {
  default = "simple-time-service"
}

variable "docker_image" {
  description = "Public Docker image from DockerHub"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

