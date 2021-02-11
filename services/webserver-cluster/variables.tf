variable "server_port" {
  description = "The port that will be used for HTTP requests"
  type        = number
  default     = 8080
}

variable "s3_bucket_name" {
  description = "The S3 Bucket used for tfstate"
  type        = string
  default     = "terraform-tradov22"
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket used for the database's remote state storage"
  type        = string
}

variable "db_remote_state_key" {
  description = "The name of the key in the S3 bucket used for the database's remote state storage"
  type        = string
}

variable "alb_name" {
  description = "The name of the ALB"
  type        = string
  default     = "terraform-asg-example"
}

variable "instance_security_group_name" {
  description = "The name of the security group for the EC2 Instances"
  type        = string
  default     = "terraform-example-instance"
}

variable "alb_security_group_name" {
  description = "The name of the security group for the ALB"
  type        = string
  default     = "terraform-example-alb"
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 Instance to run"
  type        = string
}

variable "min_size" {
  description = "The minimum number of EC2 instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "THe Maximum number of EC2 instances in the ASG"
}

variable "custom_tags" {
  description = "Custom tags to set on the VMs in the ASG"
  type        = map(string)
  default     = {}
}

/*variable "enable_autoscaling"{
  description = "If set to true, enable autoscaling"
  type = bool
}*/