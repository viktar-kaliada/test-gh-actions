#!/bin/sh

# Execute JMeter with the provided arguments
jmeter -n -t /test-plan.jmx -l /results/results.jtl -e -o /results/report