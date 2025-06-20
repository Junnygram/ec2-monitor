# EC2 Monitoring with Grafana & Prometheus

Monitor your EC2 instances with Grafana dashboards and Prometheus metrics.

## 📊 Dashboard Preview

![EC2 Monitoring Dashboard](screenshot.png)
*Real-time monitoring dashboard showing CPU, memory, disk, and network metrics*

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

- 🔍 **Prometheus** for metrics collection
- 📊 **Grafana** for visualization dashboards
- 📈 **Node Exporter** for system metrics
- 🌐 **Nginx** web server
- 🧪 **Testing scripts** for CPU/memory spikes

## Testing Your Setup

Test your monitoring with included scripts:

```bash
# Test CPU monitoring
./cpu_spike.sh

# Test memory monitoring  
./memory_spike.sh
```

## Requirements

- Ubuntu EC2 instance
- SSH access to your server
- Docker & Docker Compose (installed by script)
