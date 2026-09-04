# AWS EC2 Instance Type Change with Terraform

## 📌 Task Description

During the migration process, the **Nautilus DevOps team** created several EC2 instances in different regions. They are currently in the process of identifying the correct resources and utilization and are making continuous changes to ensure optimal resource utilization. Recently, they discovered that one of the EC2 instances was underutilized, prompting them to decide to change the instance type.

**Requirements:**
- Change the instance type from **`t2.micro`** to **`t2.nano`** for the **`devops-ec2`** instance using Terraform.
- Make sure the EC2 instance **`devops-ec2`** is in **running state** after the change.
- Make sure the **Status check is completed** (if it's still in Initializing state) before making any changes to the instance.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

👉 **Your task:** Modify the EC2 instance type and ensure the instance remains in a running state after the change.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS EC2 Instance (`devops-ec2`)
  - Instance Type Change: `t2.micro` → `t2.nano`
  - Final State: `running`

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Wait for Status Checks:**
   Before making changes, ensure the EC2 instance status checks are complete (not in "Initializing" state).
   ```bash
   aws ec2 describe-instance-status --filters "Name=instance-state-name,Values=running" --query "InstanceStatuses[?SystemStatus.Status=='ok' && InstanceStatus.Status=='ok']"
   ```

3. **Import the Existing Instance:**
   Since the instance already exists, import it into Terraform state before applying changes.
   ```bash
   terraform import aws_instance.ec2 <instance-id>
   ```

4. **Create the Configuration File:**
   Ensure `main.tf` contains the updated instance type (`t2.nano`) for the `devops-ec2` instance.

5. **Initialize Terraform:**
   Initialize the Terraform working directory to download the necessary providers.
   ```bash
   terraform init
   ```

6. **Review the Execution Plan:**
   Check the planned changes before applying them.
   ```bash
   terraform plan
   ```

7. **Apply the Configuration:**
   Apply the changes to update the instance type.
   ```bash
   terraform apply -auto-approve
   ```

8. **Verify the Instance:**
   Confirm the instance type has been changed and the instance is running.
   ```bash
   aws ec2 describe-instances --filters "Name=tag:Name,Values=devops-ec2" --query "Reservations[].Instances[].{InstanceType:InstanceType,State:State.Name}"
   ```

   Or use a table view for a cleaner output:
   ```bash
   aws ec2 describe-instances \
     --filters "Name=tag:Name,Values=devops-ec2" \
     --query "Reservations[*].Instances[*].[InstanceId,InstanceType,State.Name]" \
     --output table
   ```
