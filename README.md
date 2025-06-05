# Feedback System Infrastructure

This repository contains the infrastructure code for the Feedback System application. It manages the deployment and configuration of the application's infrastructure components using Terraform and Kubernetes.

## Repository Structure

- `terraform/`: Contains Terraform configurations for managing cloud infrastructure
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

## Related Repository

The main application code can be found here: [Feedback System](https://www.github.com/arpit529srivastava/Feeback_System)

## Getting Started

1. Ensure you have the following prerequisites:
   - Terraform installed
   - kubectl configured
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

- **Backend Service**: Handles the application's business logic and data processing
- **Frontend Service**: Provides the user interface for the feedback system
- **Kubernetes Services**: Enable communication between frontend and backend components

## Contributing

Please refer to the main application repository for contribution guidelines.