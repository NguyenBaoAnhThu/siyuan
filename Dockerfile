FROM b3log/siyuan:latest

# Create workspace directory
RUN mkdir -p /siyuan/workspace

# Set working directory
WORKDIR /opt/siyuan

# Expose port
EXPOSE 6806

# Start command with environment variables
CMD ["/bin/sh", "-c", "/opt/siyuan/kernel --workspace=/siyuan/workspace --accessAuthCode=${ACCESS_AUTH_CODE:-} --port=${PORT:-6806} --ssl=false --lang=en_US"]