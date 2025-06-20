# EC2 Monitoring with Grafana & Prometheus

Monitor your EC2 instances with Grafana dashboards and Prometheus metrics.

## Quick Setup

1. **Clone this repository**

   ```bash
   git clone https://github.com/Junnygram/ec2-monitor.git
   cd ec2_monitor
   ```

2. **Run the installation script**
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

## Access Grafana

- **URL**: `http://YOUR_SERVER_IP:3000`
- **Login**: admin / admin
- **Dashboard**: Import ID `1860` (Node Exporter Full)

## What's Included

- Prometheus for metrics collection
- Grafana for visualization
- Node Exporter for system metrics
- Nginx web server

## Requirements

- Ubuntu EC2 instance
- SSH access to your server
# ec2-monitor
