**AUTOMATED CI/CD PIPELINE FOR DJANGO WEB APPLICATION**

This project implements a complete CI/CD (Continuous Integration and Continuous Deployment) pipeline for deploying a Django web application on AWS cloud infrastructure. The pipeline automates the process of fetching source code, deploying application updates, and hosting the application on a cloud server with minimal manual intervention.

The project integrates GitHub, Jenkins, Terraform, and AWS EC2 to achieve automated deployment and infrastructure provisioning in a real-world DevOps workflow.

**TECHNOLOGIES USED**
1.	Python Django
2.	Jenkins
3.	Terraform
4.	AWS EC2
5.	Git & GitHub
6.	GitHub Webhooks
7.	Linux (Ubuntu)
8.	Nginx

**KEY FEATURES**

* Automated CI/CD Pipeline
* Infrastructure Provisioning using Terraform
* Continuous Deployment using Jenkins
* GitHub Webhook Integration
* Automated Deployment using Shell Script
* Real-Time Application Updates
* Cloud Hosting on AWS EC2
* Secure Remote Deployment using SSH

**CI/CD Workflow**

1. Code Push to GitHub
       Developers push updated application code to the GitHub repository.
2. GitHub Webhook Trigger
       GitHub automatically sends a webhook request to Jenkins whenever new code is pushed.
3. Jenkins Pipeline Execution
       Jenkins reads the Jenkinsfile and starts the automated pipeline.
4. Deployment Automation
       The deploy.sh script performs:
* Pulling latest code from GitHub
* Installing dependencies
* Applying database migrations
* Restarting the Django application server
5. Application Deployment
           The updated application is automatically deployed to the AWS EC2 instance created using Terraform.

**TERRAFORM INFRASTRUCTURE**

Terraform is used to provision and manage cloud infrastructure components, including:

* AWS EC2 Instance
* Security Groups
* Network Configuration
The Django application is hosted on the Terraform-provisioned EC2 instance.

**DEPLOYMENT AUTOMATION**

The deployment script automates the complete deployment process by:
* Checking and preparing the project directory
* Pulling latest source code
* Installing required dependencies
* Running database migrations
* Restarting the Django application server
This eliminates manual deployment effort and ensures consistent application updates.

**JENKINS PIPELINE**

The Jenkins pipeline automates:
* Source code retrieval
* Deployment execution
* Continuous integration workflow
Pipeline stages are defined inside the Jenkinsfile.

 **APPLICATION ACCESS**
 
1.	Jenkins Dashboard
            http://<JENKINS-EC2-IP>:8080


2.	Django Web Application
              http://<TERRAFORM-EC2-IP>

**CONCLUSION**

    This project demonstrates how DevOps tools and cloud technologies can be integrated to automate application deployment and infrastructure management efficiently. The implementation improves deployment speed, consistency, reliability, and overall operational efficiency.
