# Attach Elastic IP to EC2 Instance with Terraform

## 📌 Task Description

The **Nautilus DevOps team** has been creating a couple of services on AWS cloud. They have been breaking down the migration into smaller tasks, allowing for better control, risk mitigation, and optimization of resources throughout the migration process. Recently they came up with the requirements mentioned below.

**Requirements:**
- There is an instance named **`nautilus-ec2`** and an elastic IP named **`nautilus-ec2-eip`** in the **`us-east-1`** region.
- Attach the **`nautilus-ec2-eip`** elastic IP to the **`nautilus-ec2`** instance using Terraform only.
- The Terraform working directory is **`/home/bob/terraform`**.
- Update the **`main.tf`** file (do not create a separate .tf file) to attach the specified Elastic IP to the instance.

👉 **Your task:** Associate the existing Elastic IP with the existing EC2 instance using Terraform.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Region:** `us-east-1`
**Resources:**
- AWS EC2 Instance (`nautilus-ec2`) — pre-existing
- AWS Elastic IP (`nautilus-ec2-eip`) — pre-existing
- AWS EIP Association — links the Elastic IP to the instance

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Identify the Existing Resources:**
   Find the instance ID and the allocation ID of the existing Elastic IP.
   ```bash
   aws ec2 describe-instances --filters "Name=tag:Name,Values=nautilus-ec2" --query "Reservations[].Instances[].InstanceId" --output text

   aws ec2 describe-addresses --filters "Name=tag:Name,Values=nautilus-ec2-eip" --query "Addresses[].AllocationId" --output text
   ```

3. **Import the Existing Resources into Terraform State:**
   Since the instance and the Elastic IP already exist, import them before applying any changes.
   ```bash
   terraform import aws_instance.ec2 <instance-id>
   terraform import aws_eip.ec2_eip <allocation-id>
   ```

4. **Update the Configuration File:**
   Ensure `main.tf` matches the existing instance/EIP attributes and adds an `aws_eip_association` resource that ties the two together:
   ```hcl
   # Attach Elastic IP to EC2 Instance
   resource "aws_eip_association" "eip_assoc" {
     instance_id   = aws_instance.ec2.id
     allocation_id = aws_eip.ec2_eip.id
   }
   ```

5. **Initialize Terraform:**
   ```bash
   terraform init
   ```

6. **Review the Execution Plan:**
   Check the planned changes before applying them.
   ```bash
   terraform plan
   ```

7. **Apply the Configuration:**
   ```bash
   terraform apply -auto-approve
   ```

8. **Verify the Association:**
   Confirm the Elastic IP is now associated with the instance.
   ```bash
   aws ec2 describe-addresses \
     --filters "Name=tag:Name,Values=nautilus-ec2-eip" \
     --query "Addresses[*].[PublicIp,InstanceId,AssociationId]" \
     --output table
   ```
