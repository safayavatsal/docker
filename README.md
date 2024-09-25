# Dockerized Nginx with a Simple HTML Page

## Overview

This project demonstrates how to Dockerize a simple HTML page served by Nginx.

### Files

- **index.html**: A basic HTML file with a simple message ("Hello, Docker!").
- **nginx.conf**: Nginx configuration to serve the HTML file on port 80.
- **Dockerfile**: Defines the Docker image, using Nginx as the base image, and copies necessary files.

### Steps to Build and Run the Docker Container

1. Build the Docker image:
   bash
   `docker build -t my-nginx-image`

2. 	2.	Run the Docker container:
    `docker run -p 80:80 my-nginx-image`

3.	Push the Docker image to ECR:
    1.	Login to AWS ECR:
        `aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.<region>.amazonaws.com`

	  2.	Create ECR Repository:
        `aws ecr create-repository --repository-name my-nginx-repo`

	  3.	Tag and Push the Image:
        `docker tag my-nginx-image:latest <aws_account_id>.dkr.ecr.<region>.amazonaws.com/my-nginx-repo:latest`
        `docker push <aws_account_id>.dkr.ecr.<region>.amazonaws.com/my-nginx-repo:latest`


## Overview

This project demonstrates how to Dockerize a simple HTML page served by Nginx with optional enhancements.

### Files

- **index.html**: A basic HTML file with a simple message ("Hello, Docker!") and additional content.
- **styles.css**: A CSS file for styling the HTML page.
- **nginx.conf**: Nginx configuration to serve the HTML file on ports 80 and 443 (HTTPS).
- **Dockerfile**: Defines the Docker image, using Nginx as the base image, and copies necessary files.
- **docker-compose.yml**: A Docker Compose file to simplify running the application.

### Steps to Build and Run the Docker Container

1. Build and start the Docker containers using Docker Compose:
   `docker-compose up --build`
