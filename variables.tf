variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  default     = "my-k8s-cluster"
}

variable "node_group_name" {
  description = "The name of the EKS node group"
  default     = "my-node-group"
}

variable "instance_type" {
  description = "This is for instance type."
  default = "m7i-flex.large"
}

variable "desired_size" {
  description = "The desired number of worker nodes"
  default     = 2 
}

variable "max_size" {
  description = "The maximum number of worker nodes"
  default     = 3
}

variable "min_size" {
    description = "The minimum number of worker nodes"
    default     = 2
}

variable "vpc_id" {
  description = "The VPC ID for the EKS cluster"
  type = string
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  description = "The subnet IDs for the EKS cluster"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnets" {
  description = "The public subnet IDs for the EKS cluster"
  type = list(string)
  default = ["10.0.10.0/24", "10.0.11.0/24"]
}
