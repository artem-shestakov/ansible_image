FROM python:3.10.12-alpine3.18
ARG ANSIBLE_VERSION=9.1.0
RUN apk add --no-cache gcc libressl-dev libffi-dev musl-dev rust cargo openssh-client python3 python3-dev git bash unzip rsync && \
    python3 -m ensurepip
RUN python3 -m pip install --upgrade pip
RUN pip3 install ansible==$ANSIBLE_VERSION molecule[docker] yamllint ansible-lint==6.12.2 pytest pytest-testinfra
RUN apk del gcc libressl-dev libffi-dev musl-dev rust cargo
