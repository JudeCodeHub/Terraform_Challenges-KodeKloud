# AWS Kinesis Data Stream Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** needs to create an AWS Kinesis data stream for real-time data processing. This stream will be used to ingest and process large volumes of streaming data, which will then be consumed by various applications for analytics and real-time decision-making. Recently they came up with the following requirements:

**Requirements:**
- Create a Kinesis data stream using terraform.
- The stream name should be **`datacenter-stream`**.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

👉 **Your task:** Provision a Kinesis data stream based on the provided requirements to support real-time data processing for the Nautilus DevOps team.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS Kinesis Data Stream (`datacenter-stream`)

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the Kinesis data stream.

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

6. **Verify the Kinesis Stream:**
   You can verify the created stream in the AWS Console under Kinesis, or via the AWS CLI.
   ```bash
   aws kinesis describe-stream --stream-name datacenter-stream
   ```
