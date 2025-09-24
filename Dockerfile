FROM siyuan-note/siyuan:latest

WORKDIR /opt/siyuan

RUN mkdir -p /siyuan/workspace

EXPOSE 6806

CMD ["/bin/sh", "-c", "/opt/siyuan/kernel --workspace=/siyuan/workspace --accessAuthCode=${ACCESS_AUTH_CODE:-} --port=${PORT:-6806} --ssl=false"]