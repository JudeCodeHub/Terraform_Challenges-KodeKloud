# AWS CloudWatch Log Group & Log Stream Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** needs to set up CloudWatch logging for their application. They need to create a CloudWatch log group and log stream to centralize and monitor application logs effectively.

**Requirements:**
- Create a CloudWatch log group and log stream using terraform.
- The log group name should be **`nautilus-log-group`**.
- The log stream name should be **`nautilus-log-stream`**.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

👉 **Your task:** Provision a CloudWatch log group and log stream based on the provided requirements to support centralized logging for the Nautilus DevOps team's application.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS CloudWatch Log Group (`nautilus-log-group`)
- AWS CloudWatch Log Stream (`nautilus-log-stream`)
  - Associated with log group: `nautilus-log-group`

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the CloudWatch log group and log stream.

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

6. **Verify the CloudWatch Resources:**
   You can verify the created log group and log stream in the AWS Console under CloudWatch > Log groups, or via the AWS CLI.
   ```bash
   aws logs describe-log-groups --log-group-name-prefix nautilus-log-group
   aws logs describe-log-streams --log-group-name nautilus-log-group --log-stream-name-prefix nautilus-log-stream
   ```
