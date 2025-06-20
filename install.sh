#!/bin/bash

# EC2 Monitoring Setup Script
# This script installs all necessary packages and sets up the monitoring stack

echo "🚀 Starting EC2 Monitoring Setup..."

# Updates the package index
echo "📦 Updating package index..."
sudo apt-get update -y

# Install Nginx web server
echo "🌐 Installing Nginx..."
sudo apt install nginx -y

# Install Docker
echo "🐳 Installing Docker..."
sudo apt install docker.io -y

# Add current user to docker group
echo "👤 Adding user to docker group..."
sudo usermod -aG docker $USER

# Set permissions for Docker socket
echo "🔐 Setting Docker socket permissions..."
sudo chmod 666 /var/run/docker.sock

# Install Docker Compose via apt
echo "📥 Installing Docker Compose..."
sudo apt install docker-compose -y

# Verify Docker Compose installation
echo "✅ Verifying Docker Compose installation..."
docker-compose --version

# Clone monitoring repository
echo "📂 Cloning monitoring repository..."
git clone https://github.com/Junnygram/ec2-monitor.git
cd ec2-monitor

# Deploy monitoring stack
echo "🚀 Deploying monitoring stack..."
sudo docker-compose -f "./docker-compose.yml" up -d --build

echo "✅ Setup complete!"
echo "📊 Access Grafana at: http://YOUR_SERVER_IP:3000"
echo "🔑 Default login: admin / admin"
echo "📈 Import Dashboard ID: 1860 (Node Exporter Full)"