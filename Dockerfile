FROM alpine:latest

RUN apk add --no-cache socat

WORKDIR /app

CMD sh -c "socat -T1 UDP-RECVFROM:987,fork,reuseaddr EXEC:'/bin/sh -c \"echo -ne \\\"HTTP/1.1 200 OK\\r\\nhost-id:0123456789AB\\r\\nhost-type:PS4\\r\\nhost-name:UUPS4\\r\\nhost-request-port:987\\r\\ndevice-discovery-protocol-version:00020020\\r\\nsystem-version:07020001\\r\\nrunning-app-name:Youtube\\r\\nrunning-app-titleid:CUSA01116\\r\\n\\r\\n\\\"\"',nofork,stderr"
