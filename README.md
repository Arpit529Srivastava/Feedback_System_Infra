# Feedback System Infrastructure

This repository contains the infrastructure code for the Feedback System application, a modern web application designed to collect, manage, and analyze user feedback. The infrastructure is built using Infrastructure as Code (IaC) principles, leveraging Terraform for cloud resource management and Kubernetes for container orchestration.

## Features

- 🚀 Automated infrastructure deployment
- 🔒 Secure VPC-based network architecture
- 📦 Containerized application deployment
- 🔄 Scalable and maintainable infrastructure
- 🔐 Secure access management
- 📊 Monitoring and logging integration

## Repository Structure

```
.
├── terraform/               # Terraform configurations
│   ├── ECR/                # Elastic Container Registry configs
│   ├── ECS/                # Elastic Container Service configs
│   │   ├── main.tf         # Main ECS configuration
│   │   ├── output.tf       # ECS output definitions
│   │   └── .terraform/     # Terraform state and plugins
│   └── S3/                 # S3 bucket configurations
├── k8s/                    # Kubernetes manifests
│   ├── backend/            # Backend service configs
│   └── frontend/           # Frontend service configs
├── .gitignore             # Git ignore rules
└── LICENSE                # MIT License file
```

## Prerequisites

Before you begin, ensure you have the following installed and configured:

- [Terraform](https://www.terraform.io/downloads.html) (v1.0.0 or later)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [AWS CLI](https://aws.amazon.com/cli/) (v2.0.0 or later)
- [Docker](https://www.docker.com/get-started) (for local development)
- [Git](https://git-scm.com/downloads)

## Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/Feedback_System_Infra.git
   cd Feedback_System_Infra
   ```

2. **Configure AWS credentials**
   ```bash
   aws configure
   # Enter your AWS Access Key ID
   # Enter your AWS Secret Access Key
   # Enter your default region
   # Enter your preferred output format (json)
   ```

3. **Initialize Terraform**
   ```bash
   cd terraform
   terraform init
   ```

4. **Deploy infrastructure**
   ```bash
   terraform plan    # Review the changes
   terraform apply   # Apply the changes
   ```

5. **Deploy the application**
   ```bash
   # Deploy backend services
   kubectl apply -f k8s/backend/
   
   # Deploy frontend services
   kubectl apply -f k8s/frontend/
   ```

## Infrastructure Components

### AWS Services

- **ECR (Elastic Container Registry)**
  - Private container registry
  - Image versioning and lifecycle policies
  - Cross-region replication

- **ECS (Elastic Container Service)**
  - **VPC Configuration**
    - Public and private subnets
    - NAT gateways
    - Security groups
  - **ECS Cluster**
    - Auto-scaling configuration
    - Capacity providers
    - Task definitions
  - **ECS Services**
    - Load balancing
    - Service discovery
    - Health checks

### Kubernetes Components

- **Backend Service**
  - Deployment configuration
  - Service definition
  - Resource limits
  - Health checks

- **Frontend Service**
  - Deployment configuration
  - Service definition
  - Resource limits
  - Ingress configuration

## Troubleshooting

### Common Issues

1. **Terraform State Lock**
   ```bash
   terraform force-unlock <LOCK_ID>
   ```

2. **Kubernetes Pod Issues**
   ```bash
   kubectl describe pod <pod-name>
   kubectl logs <pod-name>
   ```

## Security

- All ECS resources are deployed within a VPC
- ECR repositories have strict access controls
- ECS tasks use IAM roles with least privilege
- Network security groups restrict traffic
- Regular security updates and patches
- Encrypted data at rest and in transit

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

For support and questions:
- Open an issue in the [main repository](https://github.com/arpit529srivastava/Feeback_System)
- Contact the maintainers
- Check the [documentation](https://github.com/arpit529srivastava/Feeback_System/wiki)



