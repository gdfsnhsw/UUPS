FROM alpine:latest

RUN apk add --no-cache socat

WORKDIR /app
COPY response.txt .

CMD ["sh", "-c", "socat UDP-RECVFROM:987,fork,reuseaddr EXEC:'/bin/cat /app/response.txt',nofork"]
