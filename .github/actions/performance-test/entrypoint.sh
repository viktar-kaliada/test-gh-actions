#!/bin/bash

# entrypoint.sh
set -e  # Stop the script if any command fails

echo "Starting JMeter performance tests..."

# Execute JMeter with the given parameters
jmeter -n -t /test-plan.jmx -Japp.url=http://localhost:8080 -l /results/results.jtl

echo "Performance tests completed."