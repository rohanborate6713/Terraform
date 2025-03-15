## Prerequisites to Connect Terraform to AWS

Before you can use Terraform to manage AWS resources, you need to set up the following prerequisites:


## Steps to Connect Terraform to AWS

Before you can use Terraform to manage AWS resources, follow these steps:

1. **Create an AWS Account**:
    - Go to the AWS website and sign up for an account.

2. **Install AWS CLI**:
    - Download and install the AWS CLI:
      ```sh
      
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
     unzip awscliv2.zip
     sudo ./aws/install
     
      ```

3. **Create an IAM User**:
    - Sign in to the AWS Management Console.
    - Navigate to the IAM service.
    - Create a new user with programmatic access.
    - Attach the necessary policies to the user.

4. **Configure AWS Credentials**:
    - Run the following command and provide your AWS Access Key ID, Secret Access Key, region, and output format:
      ```sh
      aws configure
      ```

5. **Install Terraform**:
    - Download and install Terraform:
      ```sh
      curl -LO "https://releases.hashicorp.com/terraform/$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r .current_version)/terraform_$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r .current_version)_$(uname -s | tr '[:upper:]' '[:lower:]')_amd64.zip"
      unzip terraform_$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r .current_version)_$(uname -s | tr '[:upper:]' '[:lower:]')_amd64.zip
      sudo mv terraform /usr/local/bin/
      ```

6. **Create a Terraform Configuration File**:
    - Create a `.tf` file with the following content:
      ```hcl
      provider "aws" {
        region = "us-west-2"
      }
      ```

Once you have completed these steps, you are ready to use Terraform to manage your AWS resources.