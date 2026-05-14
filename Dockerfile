FROM alpine:latest AS fetcher
RUN apk add --no-cache wget
RUN wget -O /yt-dlp https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp_musllinux && \
    chmod +x /yt-dlp

FROM n8nio/n8n:latest
USER root
COPY --from=fetcher /yt-dlp /usr/local/bin/yt-dlp
USER node
