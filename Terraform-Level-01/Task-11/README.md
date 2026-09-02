# AWS CloudWatch Alarm Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** is setting up monitoring in their AWS account. As part of this, they need to create a CloudWatch alarm to ensure they can track resource utilization effectively.

**Requirements:**
- Create a CloudWatch alarm named **`datacenter-alarm`**.
- The alarm should monitor **CPU utilization** of an EC2 instance.
- Trigger the alarm when CPU utilization exceeds **80%**.
- Set the evaluation period to **5 minutes** (300 seconds).
- Use a **single evaluation period**.
- Ensure that the entire configuration is implemented using Terraform. 
- The Terraform working directory is **`/home/bob/terraform`**. 
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

👉 **Your task:** Use Terraform to configure an AWS CloudWatch metric alarm that tracks the `CPUUtilization` metric for an EC2 instance, alerting if it breaches the 80% threshold over a 5-minute period.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS EC2 Instance (to be monitored)
- AWS CloudWatch Metric Alarm (`datacenter-alarm`)

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the AWS EC2 instance (or data source) and the `aws_cloudwatch_metric_alarm` resource.

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

6. **Verify the CloudWatch Alarm:**
   You can verify the created alarm in the AWS Console under CloudWatch -> Alarms, or via the AWS CLI.
   ```bash
   aws cloudwatch describe-alarms --alarm-names "datacenter-alarm"
   ```
