# 🚀 Simple Time Service (ECS Fargate + ALB + Terraform)

This project deploys a containerized "Time Service" web app on AWS using:
- Amazon ECS (Fargate)
- Application Load Balancer (ALB)
- AWS VPC (Public & Private Subnets)
- Terraform IaC

---

## 🧱 Architecture

Client → ALB (port 80) → Target Group (port 5001) → ECS Service → Fargate Task → Docker Container

yaml
Copy
Edit

![Architecture Diagram](./diagram.png) <!-- Replace with actual diagram if committed -->

---

## 🌐 Live Service

Once deployed, access the app at:
```bash
http://<your-alb-dns>

# 🕒 Simple Time Service on AWS using Terraform

This project deploys a simple containerized **Time Service API** to AWS using **ECS Fargate**, **Application Load Balancer (ALB)**, and **Terraform**. The app returns the current timestamp and request IP as a JSON response.

---

## 📌 Project Architecture

![Architecture Diagram](./SimpleTimeService-Architecture.png)

**Components:**
- **ECS Fargate**: Runs the Docker container (Node.js-based time API)
- **Application Load Balancer**: Distributes traffic to the ECS task
- **Target Group**: Routes traffic on port 5001
- **VPC Module**: Public/private subnets with NAT and Internet Gateway
- **Security Groups**: ALB (port 80) and ECS (port 5001)

---

## 🛠️ Tech Stack

- **Terraform** (v1.6+)
- **AWS ECS (Fargate)**
- **Application Load Balancer**
- **Docker**
- **Node.js**
- **AWS VPC Module** (public/private subnets, NAT)

---

## 🚀 How to Deploy

### 1. 📁 Clone the Repository
```bash
git clone https://github.com/ghatak7/SimpleTimeService-initial-version.git
cd SimpleTimeService-initial-version
