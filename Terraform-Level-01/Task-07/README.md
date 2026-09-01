# AWS EC2 Instance Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** is strategizing the migration of a portion of their infrastructure to the **AWS cloud**. Recognizing the scale of this undertaking, they have opted to approach the migration in incremental steps rather than as a single massive transition. To achieve this, they have segmented large tasks into smaller, more manageable units.

**Requirements:**
- Create an EC2 instance using Terraform.
- The EC2 instance must use the value **`nautilus-ec2`** as its Name tag.
- Use the Amazon Linux AMI **`ami-0c101f26f147fa7fd`**.
- The Instance type must be **`t2.micro`**.
- Create a new RSA key named **`nautilus-kp`**.
- Attach the **default** security group.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to provision the instance.

👉 **Your task:** Launch a foundational EC2 instance utilizing an Amazon Linux AMI, a newly generated RSA key pair, and the default VPC security group.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS EC2 Instance (`t2.micro`)
- TLS Private Key (RSA)
- AWS Key Pair (`nautilus-kp`)
- Data Source for Default Security Group

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` is created in this directory with the appropriate Terraform configurations for the AWS Provider, TLS Key, AWS Key Pair, Data Source for the security group, and EC2 Instance.

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

6. **Verify the EC2 Instance:**
   You can verify the created EC2 Instance in the AWS Console under EC2 -> Instances, or via the AWS CLI.
   ```bash
   aws ec2 describe-instances --filters "Name=tag:Name,Values=nautilus-ec2"
   ```
