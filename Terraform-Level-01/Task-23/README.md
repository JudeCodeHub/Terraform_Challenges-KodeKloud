# Amazon OpenSearch Service Domain Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** needs to set up an Amazon OpenSearch Service domain to store and search their application logs.

**Requirements:**
- Create an OpenSearch domain using Terraform.
- The domain name should be **`xfusion-es`**.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

👉 **Your task:** Provision an Amazon OpenSearch Service domain based on the provided requirements to support log storage and search for the Nautilus DevOps team.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS OpenSearch Domain (`xfusion-es`)
  - Engine Version: `OpenSearch_2.11`
  - Instance Type: `t3.small.search`
  - Instance Count: `1`
  - EBS Volume: `10 GB (gp3)`

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the OpenSearch domain.

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

6. **Verify the OpenSearch Domain:**
   You can verify the created domain in the AWS Console under Amazon OpenSearch Service, or via the AWS CLI.
   ```bash
   aws opensearch describe-domain --domain-name xfusion-es
   ```
