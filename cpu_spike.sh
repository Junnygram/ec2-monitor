#!/bin/bash

# CPU Spike Script for Testing Prometheus Monitoring
# This script creates CPU load to test your monitoring setup

echo "🔥 Starting CPU Spike Test..."
echo "⚠️  This will consume CPU resources for testing purposes"
echo "Press Ctrl+C to stop the test"

# Function to create CPU load
create_cpu_load() {
    echo "📈 Creating CPU load..."
    
    # Create CPU stress for 5 minutes using all available cores
    stress --cpu $(nproc) --timeout 300s &
    
    echo "⚡ CPU load created for 5 minutes"
    echo "📊 Check your Grafana dashboard to see the spike!"
    echo "🛑 The test will automatically stop in 5 minutes"
    
    wait
}

# Check if stress tool is installed
if ! command -v stress &> /dev/null; then
    echo "📦 Installing stress tool..."
    sudo apt-get update -y
    sudo apt-get install stress -y
fi

# Start the CPU load test
create_cpu_load

echo "✅ CPU spike test completed!"
echo "📊 Check your Grafana dashboard for the CPU usage spike"