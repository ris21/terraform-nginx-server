
# 🚀 Terraform AWS EC2 Deployment with Nginx  
**Automate Infrastructure as Code (IaC) using Terraform and AWS**  

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
### Prerequisites  
- Terraform installed  
- AWS account and credentials  

### Usage  
1. Clone the repo:  
   ```bash  
   git clone https://github.com/your-username/terraform-aws-nginx.git  
