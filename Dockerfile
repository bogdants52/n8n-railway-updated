FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache python3 py3-pip ffmpeg

RUN pip install --break-system-packages -U yt-dlp

USER node
