FROM debian:bookworm

RUN set -eux; \
    apt-get update; \
    DEBIAN_FRONTEND=noninteractive apt-get install -y netbase

RUN set -eux; \
    apt-get update; \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        git rsync tmux jq vim htop curl ca-certificates openssl \
        psmisc \
        nftables tcpdump bind9-dnsutils iproute2 traceroute \
        iputils-ping \
        zstd zip \
        python3 python3-venv \
        ; \
    true

WORKDIR /work

