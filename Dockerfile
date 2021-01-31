FROM ebendal/ci-base

ARG TERRAFORM_VERSION=0.14.5

RUN apt-get update -q && apt-get install -q -y \
    wget \
    git \
    ssh \
    tar \
    gzip \
    ca-certificates \
    unzip \
    curl \
    jq
    
RUN wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    && unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    && install terraform /usr/local/bin \
    && terraform -v