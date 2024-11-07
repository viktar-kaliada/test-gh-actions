# Use a base image that includes JMeter
FROM justinribeiro/jmeter:latest

# Copy JMeter test plan into the image
COPY ./test-plan.jmx /test-plan.jmx

# Copy the entrypoint script into the image
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh  # Make it executable

# Set the entrypoint to the script
ENTRYPOINT ["/entrypoint.sh"]