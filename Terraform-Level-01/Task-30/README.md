# Terminate EC2 Instance While Keeping Terraform Code

## 📌 Task Description

During the migration process, several resources were created under the AWS account. Some of these test resources are no longer needed at the moment, so we need to clean them up temporarily. One such instance is currently unused and should be deleted.

**Requirements:**
1. Delete the EC2 instance named **`xfusion-ec2`** present in the **`us-east-1`** region using Terraform. Make sure to keep the provisioning code, as we might need to provision this instance again later.
2. Before submitting the task, make sure the instance is in a **terminated** state.

Verification command:
```bash
aws ec2 describe-instances \
  --region us-east-1 \
  --filters "Name=tag:Name,Values=xfusion-ec2" \
  --query "Reservations[*].Instances[*].[InstanceId,State.Name]" \
  --output table
```

👉 **Your task:** Terminate the instance via Terraform without removing its resource block, so it can be re-provisioned later.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Region:** `us-east-1`
**Resources:**
- AWS EC2 Instance (`xfusion-ec2`) — to be terminated, code retained in `main.tf`

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Keep the Configuration File As-Is:**
   The `aws_instance` resource block stays untouched so it can be reused later:
   ```hcl
   # Provision EC2 instance
   resource "aws_instance" "ec2" {
     ami           = "ami-0c101f26f147fa7fd"
     instance_type = "t2.micro"
     vpc_security_group_ids = [
       "sg-a797e46e348344a66"
     ]

     tags = {
       Name = "xfusion-ec2"
     }
   }
   ```

3. **Initialize Terraform:**
   ```bash
   terraform init
   ```

4. **Destroy Only the Instance:**
   Use a targeted destroy so only this resource is terminated, leaving the code in place for later reuse.
   ```bash
   terraform destroy -target=aws_instance.ec2 -auto-approve
   ```

5. **Verify the Instance is Terminated:**
   ```bash
   aws ec2 describe-instances \
     --region us-east-1 \
     --filters "Name=tag:Name,Values=xfusion-ec2" \
     --query "Reservations[*].Instances[*].[InstanceId,State.Name]" \
     --output table
   ```
</content>
