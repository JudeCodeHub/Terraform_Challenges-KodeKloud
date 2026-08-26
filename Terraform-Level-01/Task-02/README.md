# AWS Security Group Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** is strategizing the migration of a portion of their infrastructure to the **AWS cloud**. Recognizing the scale of this undertaking, they have opted to approach the migration in incremental steps rather than as a single massive transition. To achieve this, they have segmented large tasks into smaller, more manageable units.

This granular approach enables the team to execute the migration in gradual phases, ensuring smoother implementation and minimizing disruption to ongoing operations. By breaking down the migration into smaller tasks, the Nautilus DevOps team can systematically progress through each stage, allowing for better control, risk mitigation, and optimization of resources throughout the migration process.

**Requirements:**
- Use Terraform to create a security group under the default VPC.
- The name of the security group must be **`datacenter-sg`**.
- The description must be **`Security group for Nautilus App Servers`**.
- Add an inbound rule of type HTTP, with a port range of 80, and source CIDR range `0.0.0.0/0`.
- Add another inbound rule of type SSH, with a port range of 22, and source CIDR range `0.0.0.0/0`.
- Ensure that the security group is created in the **`us-east-1`** region using Terraform.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` is created in this directory with the appropriate Terraform configurations for the AWS Provider, VPC data source, and Security Group.

3. **Initialize Terraform:**
   Initialize the Terraform working directory to download the necessary providers.
   ```bash
   terraform init
   ```

4. **Review the Execution Plan:**
   Check the planned changes before applying them.
   ```bash
   terraform plan
   ```

5. **Apply the Configuration:**
   Apply the changes to create the resources.
   ```bash
   terraform apply -auto-approve
   ```

6. **Verify the Security Group:**
   You can verify the created security group in the AWS Console under VPC -> Security Groups, or via the AWS CLI.
   ```bash
   aws ec2 describe-security-groups --group-names datacenter-sg --region us-east-1
   ```
