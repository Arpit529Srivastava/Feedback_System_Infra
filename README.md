# Feedback System Infrastructure

This repository contains the infrastructure code for the Feedback System application. It manages the deployment and configuration of the application's infrastructure components using Terraform and Kubernetes.

## Repository Structure

- `terraform/`: Contains Terraform configurations for managing cloud infrastructure
  - `ecr/`: Elastic Container Registry configurations
  - `ecs/`: Elastic Container Service configurations
    - `vpc/`: VPC and networking configurations
    - `cluster/`: ECS cluster configurations
    - `services/`: ECS service definitions
- `k8s/`: Kubernetes manifests for deploying the application
  - `backend/`: Kubernetes configurations for the backend service
    - `deployment.yaml`: Defines the backend deployment configuration
    - `service.yaml`: Configures the backend service
  - `frontend/`: Kubernetes configurations for the frontend service
    - `deployment.yaml`: Defines the frontend deployment configuration
    - `service.yaml`: Configures the frontend service

## Application Architecture

The Feedback System is a containerized application with separate frontend and backend services. The infrastructure is managed using:

1. **Terraform**: For provisioning and managing cloud infrastructure
2. **Kubernetes**: For container orchestration and deployment
3. **AWS Services**:
   - **ECR**: Elastic Container Registry for storing Docker images
   - **ECS**: Elastic Container Service for container orchestration
     - **VPC**: Virtual Private Cloud for secure network isolation within ECS
     - **ECS Cluster**: Container orchestration and management
     - **ECS Services**: Application service definitions and scaling

## Related Repository

The main application code can be found in the Feedback System repository:
[Feedback System](https://github.com/arpit529srivastava/Feeback_System)

This repository contains the complete source code for the Feedback System application, including:
- Frontend React application
- Backend API services
- Database schemas and migrations
- API documentation
- Testing suites

## Getting Started

1. Ensure you have the following prerequisites:
   - Terraform installed
   - kubectl configured
   - AWS CLI configured with appropriate credentials
   - Access to a Kubernetes cluster

2. Deploy the infrastructure:
   ```bash
   cd terraform
   terraform init
   terraform apply
   ```

3. Deploy the application:
   ```bash
   kubectl apply -f k8s/backend/
   kubectl apply -f k8s/frontend/
   ```

## Infrastructure Components

- **ECR**: Stores and manages Docker container images
- **ECS**: Manages container deployment and scaling
  - **VPC**: Provides network isolation and security for ECS resources
  - **ECS Cluster**: Manages container orchestration
  - **ECS Services**: Handles service deployment and scaling
- **Backend Service**: Handles the application's business logic and data processing
- **Frontend Service**: Provides the user interface for the feedback system
- **Kubernetes Services**: Enable communication between frontend and backend components

## Contributing

Please refer to the main application repository for contribution guidelines.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Security

- All ECS resources are deployed within a VPC for enhanced security
- ECR repositories are configured with appropriate access controls
- ECS tasks run with least privilege IAM roles
- Network security groups are configured to restrict traffic within the VPC

## Support

For support and questions, please open an issue in the main Feedback System repository.