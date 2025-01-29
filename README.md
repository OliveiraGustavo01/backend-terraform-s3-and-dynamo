# Terraform S3 and DynamoDB State Storage Setup

This repository provides a simple Terraform configuration to quickly create an S3 bucket and DynamoDB table for securely storing and managing your Terraform state. It is not a module but rather a convenience setup to streamline the creation of these resources with best practices, such as encryption and state locking.

## Resources Created

- **S3 Bucket**: A private S3 bucket for storing Terraform state with versioning and server-side encryption enabled.
- **KMS Key**: A custom KMS key used to encrypt the S3 bucket objects.
- **DynamoDB Table**: A DynamoDB table used for state locking and consistency.

## Features

- **Encryption**: The S3 bucket is encrypted using a custom AWS KMS key.
- **Access Control**: Public access is blocked to the S3 bucket to ensure secure storage.
- **State Locking**: DynamoDB table for managing state locking to prevent concurrent modifications.
- **Key Rotation**: The KMS key is configured to automatically rotate for better security.

## Prerequisites

- AWS account with sufficient permissions to create S3, DynamoDB, and KMS resources.
- Terraform installed on your machine.
  
## Usage
This setup makes it easy to create an S3 bucket and DynamoDB table for managing your Terraform state. To use it:

1* Edit the variables.tf file:

- Set a unique name for your S3 bucket in s3_terraform_state.
- Set a name for your DynamoDB table in dynamo_terraform_state.
- Optionally, change the AWS region in region (default is us-west-2).

2* Run Terraform:

Initialize the configuration:
````
terraform init
````

Preview the changes:
````
terraform plan
````

Apply the changes to create the resources:
````
terraform apply
````
That's it! After running these commands, your S3 bucket and DynamoDB table will be set up for Terraform state management.
