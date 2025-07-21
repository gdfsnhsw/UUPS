FROM alpine:latest

RUN apk add --no-cache socat

WORKDIR /app
COPY response.txt .

CMD ["socat", "UDP-RECVFROM:987,fork,reuseaddr", "SYSTEM:'cat /app/response.txt'"]
