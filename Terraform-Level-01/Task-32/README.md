# Delete IAM Role While Keeping Terraform Code

## 📌 Task Description

The **Nautilus DevOps team** is currently engaged in a cleanup process, focusing on removing unnecessary data and services from their AWS account. As part of the migration process, several resources were created for one-time use only, necessitating a cleanup effort to optimize their AWS environment.

**Requirements:**
- Delete the IAM role named **`iamrole_james`** using Terraform.
- Make sure to keep the provisioning code, as we might need to provision this role again later.

👉 **Your task:** Delete the IAM role via Terraform without removing its resource block, so it can be re-provisioned later.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:**
- AWS IAM Role (`iamrole_james`) — to be deleted, code retained in `main.tf`

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Keep the Configuration File As-Is:**
   The `aws_iam_role` resource block stays untouched so it can be reused later:
   ```hcl
   resource "aws_iam_role" "role" {
     name = "iamrole_james"

     assume_role_policy = jsonencode({
       Version = "2012-10-17",
       Statement = [
         {
           Effect    = "Allow"
           Principal = {
             Service = "ec2.amazonaws.com"
           }
           Action = "sts:AssumeRole"
         }
       ]
     })

     tags = {
       Name = "iamrole_james"
     }
   }
   ```

3. **Initialize Terraform:**
   ```bash
   terraform init
   ```

4. **Destroy Only the IAM Role:**
   Use a targeted destroy so only this resource is removed, leaving the code in place for later reuse.
   ```bash
   terraform destroy -target=aws_iam_role.role -auto-approve
   ```

5. **Verify the Role is Deleted:**
   ```bash
   aws iam get-role --role-name iamrole_james
   ```
   This command should return an error (`NoSuchEntity`), confirming the role no longer exists.
</content>
