# Terraform AWS EC2 Instance Deployment

This Terraform project automates the deployment of an EC2 instance on AWS. The instance will be provisioned with specified configurations in the us-east-1 region.

## Prerequisites

1. **Terraform Installation**: Ensure Terraform is installed on your local machine. Refer to the [Terraform Installation Guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) for instructions.
2. **AWS CLI Configuration**: Configure AWS CLI with appropriate credentials. Refer to this [blog](https://k21academy.com/amazon-web-services/aws-cli/) for instructions.

## Create EC2 Instance and an S3 Bucket

1. Clone this repository to your local machine.
   `git clone <repository-url>`

2. Navigate to the cloned directory.
   `cd terraform-ec2-instance`

3. Review and modify the `main.tf` file to adjust any configurations.

4. Initialize Terraform.
   `terraform init`

5. Visualize changes
   `terraform plan`

6. Apply the Terraform configuration to create the EC2 instance and the S3 bucket.
   `terraform apply`

7. Upon successful completion, the EC2 instance and the S3 Bucket will be provisioned on your AWS account.

## Cleanup

To remove the provisioned resources and destroy the EC2 instance, run:
`terraform destroy`
