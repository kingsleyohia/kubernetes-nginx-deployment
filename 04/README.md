## Exercise 04 - Terraform VPC Provisioning on AWS

In this exercise, you will create a Terraform module (or use Terragrunt for additional management) to provision a Virtual Private Cloud (VPC) on AWS. This VPC will be configured with both public and private subnets across all availability zones (AZs) in your chosen region. Follow these steps to ensure a secure, scalable, and cost-effective setup.

### Steps to Complete the Exercise

1. **Prepare Your Terraform Environment**:
   - Ensure Terraform or Terragrunt is installed and configured on your local machine.
   - Set up your AWS credentials so that Terraform can authenticate and manage resources in your AWS account.

2. **Define the module**:
   - Create a Terraform module that defines your VPC infrastructure. The module should include:
     - **VPC**: A single VPC for your AWS environment.
     - **Subnets**: Provision both public and private subnets in each availability zone of your chosen AWS region.
     - **Route Tables**: Configure necessary route tables to manage traffic between subnets and route public traffic appropriately.
     - **Internet Gateway (IGW)**: Attach an IGW for public subnet internet access.
     - **NAT Gateways**: Set up NAT gateways to enable instances in private subnets to communicate with the internet.

3. **Enable Internet Access for Private Subnets**:
   - Ensure that instances in the private subnets can communicate with external networks using NAT gateways or NAT instances.
   - Adjust route tables accordingly to direct outbound traffic from private subnets to the internet via NAT.

4. **Configure DNS Access**:
   - Integrate the VPC with internal DNS records hosted on Route 53. This may involve setting up private hosted zones or using VPC DNS settings.
   - Ensure DNS queries can resolve for internal and AWS-provided addresses.

5. **Optimize for S3 Traffic and Cost**:
   - Figure out a way to optimize high traffic between the VPC and S3.
   - Adjust your Terraform module to provision these resources programmatically.

6. **Deploy and Verify**:
   - Use Terraform to apply your configuration, provisioning the VPC and associated resources on AWS:
     ```bash
     terraform init
     terraform apply
     ```
   - Verify that all resources are correctly created and configured according to your requirements.

7. **Cleanup**:
   - When you are finished, use Terraform to destroy the resources and clean up your AWS environment:
     ```bash
     terraform destroy
     ```