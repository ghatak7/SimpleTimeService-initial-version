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
