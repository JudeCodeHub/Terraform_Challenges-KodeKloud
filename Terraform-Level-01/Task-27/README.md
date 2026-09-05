# Attach IAM Policy to IAM User with Terraform

## 📌 Task Description

The **Nautilus DevOps team** has been creating a couple of services on AWS cloud. They have been breaking down the migration into smaller tasks, allowing for better control, risk mitigation, and optimization of resources throughout the migration process. Recently they came up with the requirements mentioned below.

**Requirements:**
- An IAM user named **`iamuser_rose`** and a policy named **`iampolicy_rose`** already exist.
- Use Terraform to attach the IAM policy **`iampolicy_rose`** to the IAM user **`iamuser_rose`**.
- The Terraform working directory is **`/home/bob/terraform`**.
- Update the **`main.tf`** file (do not create a separate .tf file) to accomplish this task.

👉 **Your task:** Attach the existing IAM policy to the existing IAM user using Terraform.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:**
- AWS IAM User (`iamuser_rose`) — pre-existing
- AWS IAM Policy (`iampolicy_rose`) — pre-existing
- AWS IAM User Policy Attachment — links the policy to the user

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Identify the Existing Resources:**
   Find the ARN of the existing IAM policy (the IAM user is referenced by name, so no lookup is needed for it).
   ```bash
   aws iam list-users --query "Users[?UserName=='iamuser_rose']"

   aws iam list-policies --query "Policies[?PolicyName=='iampolicy_rose'].Arn" --output text
   ```

3. **Import the Existing Resources into Terraform State:**
   Since the user and the policy already exist, import them before applying any changes.
   ```bash
   terraform import aws_iam_user.user iamuser_rose
   terraform import aws_iam_policy.policy <policy-arn>
   ```

4. **Update the Configuration File:**
   Ensure `main.tf` matches the existing user/policy attributes and adds an `aws_iam_user_policy_attachment` resource that ties the two together:
   ```hcl
   # Attach IAM Policy to IAM User
   resource "aws_iam_user_policy_attachment" "user_policy_attach" {
     user       = aws_iam_user.user.name
     policy_arn = aws_iam_policy.policy.arn
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

8. **Verify the Attachment:**
   Confirm the policy is now attached to the user.
   ```bash
   aws iam list-attached-user-policies --user-name iamuser_rose --output table
   ```
</content>
