#  AWS IAM Basics with Terraform

This lab demonstrates how to manage **AWS Identity and Access Management (IAM)** using **Terraform**. You'll learn how to create IAM users, groups, and attach policies to securely manage access to AWS resources.

---

##  Objectives

- Create IAM users using Terraform
- Create an IAM group
- Attach AWS managed policies to the group
- Add users to the group

---

##  Project Structure
```
IAM/
├── main.tf # Main Terraform configuration
├── variables.tf # Input variables
├── outputs.tf # Output values
├── terraform.tfvars # Variable definitions

```
---

##  Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS CLI configured with appropriate IAM credentials (`aws configure`)
- AWS account with permissions to manage IAM


