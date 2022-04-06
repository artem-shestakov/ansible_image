FROM docker:stable
ARG ANSIBLE_VERSION=4.3.0
RUN apk add --no-cache gcc libressl-dev libffi-dev musl-dev rust cargo openssh-client python3 && \
    python3 -m ensurepip
RUN pip install ansible==$ANSIBLE_VERSION molecule[docker] yamllint ansible-lint pytest pytest-testinfra
RUN apk del gcc libressl-dev libffi-dev musl-dev rust cargo