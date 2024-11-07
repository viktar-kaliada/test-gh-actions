# .github/actions/performance-test/app.dockerfile
FROM justb4/jmeter:5.5

# Copy the JMeter test plan into the container
COPY test-plan.jmx /test-plan.jmx

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Create a directory for results
RUN mkdir -p /results

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint to the script
ENTRYPOINT ["/entrypoint.sh"]