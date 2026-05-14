FROM n8nio/n8n:latest

USER root

COPY --from=ghcr.io/yt-dlp/yt-dlp:latest /usr/local/bin/yt-dlp /usr/local/bin/yt-dlp

USER node
