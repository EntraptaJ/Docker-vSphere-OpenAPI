FROM python:2-alpine3.11
RUN apk add --no-cache \
  build-base \
  libffi-dev \
  openssl-dev \
  ca-certificates \
  libxml2-dev \
  libxslt-dev \
  git

RUN pip install --upgrade git+https://github.com/vmware/vsphere-automation-sdk-python.git \
  && cd /tmp \
  && git clone https://github.com/vmware/vmware-openapi-generator.git

ENTRYPOINT [ "python", "/tmp/vmware-openapi-generator/vmsgen.py" ]