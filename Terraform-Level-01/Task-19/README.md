# AWS SNS Topic Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** needs to set up an AWS Simple Notification Service (SNS) topic to send notifications for their applications. This topic will facilitate communication between services by publishing messages to subscribers, such as email, SMS, or other AWS services, for alerts and updates.

**Requirements:**
- Create an SNS topic using terraform.
- The SNS topic should be named **`datacenter-notifications`**.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

👉 **Your task:** Provision an SNS topic based on the provided requirements to enable notification-based communication for the Nautilus DevOps team's applications.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS SNS Topic (`datacenter-notifications`)

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the SNS topic.

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

6. **Verify the SNS Topic:**
   You can verify the created topic in the AWS Console under SNS, or via the AWS CLI.
   ```bash
   aws sns list-topics --query "Topics[?ends_with(TopicArn, ':datacenter-notifications')]"
   ```
