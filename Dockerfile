FROM quay.io/mozmar/ubuntu-slim-python:latest

WORKDIR /app
CMD ["nginx", "-c",  "/app/nginx.conf"]

RUN apt-get update && apt-get install -y nginx-light
RUN apt-get update && \
    apt-get install -y --no-install-recommends nginx-light && \
    rm -rf /var/lib/apt/lists/*

ADD . /app
