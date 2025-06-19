🕒 Simple Time Service – Fargate + ALB + Terraform
This project demonstrates the deployment of a containerized microservice (SimpleTimeService) on AWS ECS Fargate with Terraform, fronted by an Application Load Balancer (ALB). The service returns the current server time and IP in JSON format.

<br>
🚀 Project Architecture

Note: Replace with your image file name (or use a GitHub image link if hosted elsewhere)

📌 Features
Fully automated provisioning using Terraform

Deployed on ECS Fargate (no EC2 needed)

Scalable and stateless containerized microservice

Exposed via Application Load Balancer (ALB)

Follows clean and modular infrastructure-as-code practice

Health checks and port mapping configured for robust deployment

🛠️ Prerequisites
Before you deploy, make sure the following tools are installed:

Tool	Description	Install
Terraform	Infrastructure-as-Code tool	>= 1.0
AWS CLI	Interact with AWS services	>= v2
Docker	Build and push Docker images	Latest
AWS Account & IAM Permissions	Access to create VPC, ECS, ALB, IAM roles, etc.	Needed

🔐 AWS Credentials
Set up your AWS credentials locally using:

bash
Copy
Edit
aws configure
Or export them as environment variables:

bash
Copy
Edit
export AWS_ACCESS_KEY_ID=your-access-key
export AWS_SECRET_ACCESS_KEY=your-secret-key
export AWS_DEFAULT_REGION=us-east-1
🐳 Docker Image
You can pull or inspect the containerized app:

bash
Copy
Edit
docker pull sourajitdocker/simple-time-service:v4
This image responds with:

json
Copy
Edit
{
  "ip": "10.0.3.91",
  "timestamp": "2025-06-19T09:54:04.417514Z"
}
📂 Project Structure
bash
Copy
Edit
SimpleTimeService/
│
├── main.tf                 # Main Terraform configuration
├── variables.tf            # Input variables
├── outputs.tf              # Output variables like ALB DNS
├── terraform.tfvars        # Variable values
├── Dockerfile              # (If building your own image)
├── architecture.png        # Project architecture diagram
└── README.md               # You're reading this!
⚙️ How to Deploy
1. Clone the Repository
bash
Copy
Edit
git clone https://github.com/ghatak7/SimpleTimeService-initial-version.git
cd SimpleTimeService-initial-version
2. Initialize Terraform
bash
Copy
Edit
terraform init
3. Preview Plan
bash
Copy
Edit
terraform plan
4. Apply the Infrastructure
bash
Copy
Edit
terraform apply --auto-approve
5. Get Load Balancer URL
After deployment, Terraform will output something like:

ini
Copy
Edit
alb_dns_name = "simple-time-service-alb-xxxxxx.us-east-1.elb.amazonaws.com"
Test it:

bash
Copy
Edit
curl http://simple-time-service-alb-xxxxxx.us-east-1.elb.amazonaws.com/
🛑 How to Destroy
To clean up all resources:

bash
Copy
Edit
terraform destroy --auto-approve
