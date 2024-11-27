FROM mcr.microsoft.com/devcontainers/base:ubuntu

ARG CEOS_LAB_VERSION_ARG

ENV CEOS_LAB_VERSION=${CEOS_LAB_VERSION_ARG}

# install some basic tools inside the container
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    sshpass \
    iputils-ping \
    htop \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean

# copy postCreate script
COPY ./postCreate.sh /bin/postCreate.sh
RUN chmod +x /bin/postCreate.sh

USER vscode

# install the latest containerlab and eos-downloader
RUN bash -c "$(curl -sL https://get.containerlab.dev)" \
    && pip3 install --user "eos-downloader>=0.10.1"
