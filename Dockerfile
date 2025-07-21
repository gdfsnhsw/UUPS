FROM alpine:latest

RUN apk add --no-cache socat

WORKDIR /app
COPY response.txt .

# CMD ["socat", "UDP-RECVFROM:987,fork,reuseaddr", "SYSTEM:'cat /app/response.txt'"]
CMD ["sh", "-c", "socat -T5 UDP-RECVFROM:987,fork,reuseaddr SYSTEM:'cat /app/response.txt' 2>/dev/null"]
