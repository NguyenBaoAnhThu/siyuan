FROM b3log/siyuan:latest

# Create workspace directory
RUN mkdir -p /siyuan/workspace

# Set working directory
WORKDIR /opt/siyuan

# Render sẽ set $PORT nên không hardcode
CMD ["/bin/sh", "-c", "/opt/siyuan/kernel \
  --workspace=/siyuan/workspace \
  --accessAuthCode=${SIYUAN_ACCESS_AUTH_CODE:-} \
  --port=${PORT:-10000} \
  --ssl=false \
  --lang=en_US"]
