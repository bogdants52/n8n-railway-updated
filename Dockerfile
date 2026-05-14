FROM n8nio/n8n:latest

USER root

RUN apt-get update && \
    apt-get install -y python3 python3-pip ffmpeg curl unzip && \
    rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://deno.land/install.sh | DENO_INSTALL=/usr/local sh

RUN pip install --break-system-packages -U "yt-dlp[default]"

RUN pip install --break-system-packages -U yt-dlp-get-pot

USER node
