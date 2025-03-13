
# 🚀 Terraform AWS Project: Automated Nginx Server Deployment

**Deploy a secure, scalable Nginx web server on AWS using Infrastructure as Code (IaC)** 

![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)

## 📝 Project Overview  
This project demonstrates **Infrastructure as Code (IaC)** using Terraform to deploy an AWS EC2 instance running Nginx. Key features:  
- **Automated provisioning** of EC2 instances and security groups.  
- **User Data Script** to install and configure Nginx on instance launch.  
- **GitHub Integration** for version control and collaboration.  

## 🛠️ Features  
- **Terraform IaC**: Define AWS resources (EC2, security groups) programmatically.  
- **Automation**: Install and configure Nginx using `user_data` scripts.  
- **Security**: Restrict SSH/HTTP access via AWS security groups.  
- **Reproducibility**: Deploy identical infrastructure with a single command.  

## 🚀 Getting Started  

### 📋 **Prerequisites**
- Terraform installed
- AWS CLI configured with valid credentials
- AWS Account with IAM permissions for EC2, VPC, and Security Groups
- SSH Key Pair

### Tasks

1. **Installed Terraform on my local machine.**
2. **Wrote a Terraform configuration to provision:**
   - An EC2 instance (`t2.micro`, Free Tier eligible).
   - A security group allowing SSH (port `22`) and HTTP (port `80`).
   - 
3. **Deployed the infrastructure.**
   1. **Initialize Terraform:**
   ```sh
   terraform init
   ```
   ![image alt](https://github.com/ris21/terraform-nginx-server/blob/main/Terraform%20init%20and%20plan.PNG).
2. **Plan the Deployment:**
   ```sh
   terraform plan
   ```
   
3. **Apply the Changes:**
   ```sh
   terraform apply -auto-approve
   ```
   
5. **Tested the application using ssh.**
   
7. **Destroyed the infrastructure after testing.**
   
###  Skills Demonstrated
 - Terraform: Infrastructure as Code (IaC)
 - AWS: EC2, Security Groups, IAM
 - Automation: Bash scripting, CI/CD principles
 - DevOps Best Practices: Version control, documentation

### Nginx web page access
![image alt](https://github.com/ris21/terraform-nginx-server/blob/main/nginx%20web%20server%20access.PNG)

### 📜 License
Apache License 2.0 | Learn More
