#!/bin/bash

# Memory Spike Script for Testing Prometheus Monitoring
# This script creates memory pressure to test your monitoring setup

echo "🔥 Starting Memory Spike Test..."
echo "⚠️  This will consume system memory for testing purposes"
echo "Press Ctrl+C to stop the test"

# Function to create memory pressure
create_memory_pressure() {
    echo "📈 Creating memory pressure..."
    
    # Allocate memory in chunks (adjust size as needed)
    # This creates a 1GB memory allocation
    stress --vm 1 --vm-bytes 1G --timeout 300s &
    
    echo "💾 Memory pressure created for 5 minutes"
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

# Start the memory pressure test
create_memory_pressure

echo "✅ Memory spike test completed!"
echo "📊 Check your Grafana dashboard for the memory usage spike"