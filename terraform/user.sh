#!/bin/bash
# Update packages
sudo yum update -y

# Install Docker
sudo amazon-linux-extras install docker -y || sudo dnf install docker -y

# Start Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add ec2-user to docker group
sudo usermod -aG docker ec2-user


