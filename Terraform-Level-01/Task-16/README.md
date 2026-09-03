# AWS IAM Policy Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** has been creating a couple of services on AWS cloud. They have been breaking down the migration into smaller tasks, allowing for better control, risk mitigation, and optimization of resources throughout the migration process. Recently they came up with the following requirements:

**Requirements:**
- Create an IAM policy using terraform.
- The name of the IAM policy must be **`iampolicy_kareem`**.
- The policy must be created in the **`us-east-1`** region.
- The policy must allow read-only access to the EC2 console, i.e., it must allow users to view all instances, AMIs, and snapshots in the Amazon EC2 console.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

👉 **Your task:** Provision an IAM policy based on the provided requirements to grant read-only EC2 console access for the Nautilus DevOps team.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Region:** `us-east-1`
**Resources:** 
- AWS IAM Policy (`iampolicy_kareem`)

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the IAM policy with EC2 read-only permissions.

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

6. **Verify the IAM Policy:**
   You can verify the created policy in the AWS Console under IAM, or via the AWS CLI.
   ```bash
   aws iam get-policy --policy-arn $(aws iam list-policies --query "Policies[?PolicyName=='iampolicy_kareem'].Arn" --output text)
   ```
