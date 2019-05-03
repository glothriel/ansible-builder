FROM debian:8-slim

RUN apt-get update -qq
RUN apt-get install -y -qq python-pip python-dev libffi-dev
RUN pip install --upgrade pip
RUN pip install --upgrade --upgrade-strategy eager pyinstaller ansible~=2.4.0 --ignore-installed pycparser
COPY bin/ansible-builder /usr/bin/ansible-builder
RUN mkdir -p /opt/artifacts