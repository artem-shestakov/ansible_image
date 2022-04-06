FROM python:3.9-alpine3.13
ARG ANSIBLE_VERSION=4.3.0
RUN apk add --no-cache gcc libressl-dev libffi-dev musl-dev rust cargo openssh-client && \
    pip install ansible==$ANSIBLE_VERSION molecule[docker] yamllint ansible-lint pytest pytest-testinfra && \
    apk del gcc libressl-dev libffi-dev musl-dev rust cargo