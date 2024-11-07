#!/bin/bash

# entrypoint.sh
set -e  # Stop the script if any command fails

echo "Starting JMeter performance tests..."
echo "Using test plan at: /test-plan.jmx"

# Check if the JMX file exists
if [ ! -f /test-plan.jmx ]; then
    echo "Test plan not found at /test-plan.jmx"
    exit 1
fi

# Execute JMeter with the given parameters
jmeter -n -t /test-plan.jmx -Japp.url=http://localhost:8080 -l /results/results.jtl

echo "Performance tests completed."