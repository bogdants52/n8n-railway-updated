FROM ghcr.io/yt-dlp/yt-dlp:latest AS yt

FROM n8nio/n8n:latest

USER root

COPY --from=yt /usr/local/bin/yt-dlp /usr/local/bin/yt-dlp

USER node
