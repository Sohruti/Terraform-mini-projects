# Static Website Deployment Using AWS S3 and CloudFront

⚠️ Warning: CloudFront deployment requires a fully verified AWS account. If your account is not verified by AWS, CloudFront creation may fail even when your Terraform configuration and IAM permissions are correct.
## Overview

This project provisions a static website hosting environment on AWS using Terraform. Website assets are stored in an S3 bucket, while CloudFront is used to distribute content globally with low latency and HTTPS support.

---

## Architecture

```text
User Browser
      |
      v
CloudFront Distribution
      |
      v
S3 Bucket
```

### Services Used

* **Amazon S3** – Stores website files.
* **Amazon CloudFront** – Delivers content through AWS edge locations.
* **Terraform** – Automates infrastructure deployment.

---

## Project Structure

```text
project/
├── main.tf
├── variables.tf
├── outputs.tf
├── locals.tf
└── www/
    ├── index.html
    ├── style.css
    └── script.js
```

---

## Resources Created

* S3 Bucket
* S3 Bucket Policy
* S3 Objects (website files)
* CloudFront Origin Access Control (OAC)
* CloudFront Distribution

---

## Key Features

* Static website hosting on AWS
* Global content delivery through CloudFront
* HTTPS support
* Automated file uploads using Terraform
* Proper content-type handling for web assets
* Infrastructure managed as code


## Deployment Workflow

### 1. Initialize Terraform

```bash
terraform init
```

### 2. Review Planned Changes

```bash
terraform plan
```

### 3. Deploy Infrastructure

```bash
terraform apply
```

Confirm the deployment when prompted.

---

## Accessing the Website

After a successful deployment, Terraform will output the CloudFront domain name.

Example:

```text
https://xxxxxxxxxxxx.cloudfront.net
```

Open the URL in a browser to view the website.

---

## Cleanup

To remove all created resources:

```bash
terraform destroy
```

---

## Learning Outcomes

By completing this project, you will gain experience with:

* Terraform resource management
* Amazon S3 configuration
* CloudFront distributions
* Website file provisioning
* Infrastructure as Code (IaC) concepts
* AWS static website deployment practices
