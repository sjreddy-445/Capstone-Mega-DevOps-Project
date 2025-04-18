# Capstone mega DevSecOps Project 🚀 

## CD Repository: 👉 https://github.com/praduman8435/Capstone-Mega-CD-Pipeline

## 🔍 Project Overview
This project showcases a **complete, production-grade DevSecOps pipeline** to deploy a containerized MERN application on **Amazon EKS** using **Terraform, Jenkins, Helm, and Kubernetes**. It incorporates **CI/CD automation, infrastructure as code, monitoring, and security** to deliver a secure, scalable, and highly available cloud-native deployment.

> Designed as a real-world capstone project, this serves as a blueprint for setting up advanced DevOps workflows with automation, security, and observability built-in.

![](architecture-diagram.png)

## 🏗️ Key Highlights
- ✅ **Hosted on AWS** with scalable infrastructure
- ✅ **EKS for Kubernetes** orchestration
- ✅ **Terraform for Infrastructure as Code**
- ✅ **CI/CD pipelines with Jenkins**
- ✅ **Docker for app containerization**
- ✅ **Helm for Kubernetes package management**
- ✅ **Trivy and SonarQube for vulnerability scanning**
- ✅ **Prometheus & Grafana for monitoring**
- ✅ **NGINX Ingress + Cert-Manager for secure SSL endpoints**

## 🛠️ Tools & Technologies Used

### ⚙️ Infrastructure
- **AWS EC2, EKS, IAM, VPC, Security Groups**
- **Terraform** for provisioning

### 🚀 CI/CD
- **Jenkins** for automated build & deployment
- **GitHub** for source code & triggers
- **Docker** + **DockerHub** for container management
- **Helm** for deploying Kubernetes manifests

### 🔐 Security
- **Trivy** for container vulnerability scanning
- **SonarQube** for code quality & static analysis
- **Gmail SMTP** for real-time build notifications

### 📈 Monitoring
- **Prometheus** for metrics collection
- **Grafana** for dashboard visualizations
- **Kube-state-metrics** & **Node Exporter** for observability

### 🌐 Ingress & SSL
- **NGINX Ingress Controller** for routing
- **Cert-Manager** with **Let's Encrypt** for HTTPS
- **GoDaddy DNS** for domain management

## 📦 CI/CD Pipeline Breakdown

### 🧪 CI Pipeline
- Dockerize MERN app
- Run lint checks, unit tests, and security scan with Trivy
- Push image to DockerHub
- Trigger pipeline via GitHub webhook
- Analyze code with SonarQube

### 🚀 CD Pipeline
- Deploy to EKS using Helm
- Apply Kubernetes manifests and HPA configs
- Use `kubectl` from Jenkins to manage deployment
- Send real-time build status via Gmail notifications

## 🔐 Ingress & SSL Configuration
- Configured **NGINX Ingress Controller**
- Issued SSL using **Let's Encrypt ClusterIssuer**
- DNS mapping done via **GoDaddy**

## 📊 Monitoring Dashboard
- Install Prometheus & Grafana via Helm
- Expose services with LoadBalancer for external access
- Import Prometheus as data source in Grafana
- Use built-in dashboards for Kubernetes monitoring

## 🎯 Final Outcome
- ✅ Secure, scalable, and automated deployment pipeline
- ✅ Production-ready Kubernetes environment
- ✅ Real-time monitoring & alerting in place
- ✅ Infrastructure-as-code for repeatable setup
- ✅ Easy collaboration and maintainability

## 📖 Read the Full Blog
[**capstone-devops-project-enterprise-grade-cicd-pipeline-with-kubernetes-on-aws-jenkins-helm-ingress-and-monitoring**](https://itspraduman.hashnode.dev/capstone-devops-project-enterprise-grade-cicd-pipeline-with-kubernetes-on-aws-jenkins-helm-ingress-and-monitoring)
