variable "s3_terraform_state" {
  description = "The name of the S3 bucket to store Terraform state (must be globally unique)"
  type        = string
}

variable "dynamo_terraform_state" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
}

variable "region" {
  description = "The AWS region to create the resources in"
  type        = string
  default     = "us-west-2"
}
