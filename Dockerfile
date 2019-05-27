FROM alpine:latest
RUN apk --no-cache add ca-certificates
COPY micro-gateway /micro-gateway

ENTRYPOINT /micro-gateway api
LABEL Name=micro-gateway Version=0.0.1
EXPOSE 8080
