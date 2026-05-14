FROM python:3.11-slim AS builder

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    pip install yt-dlp

FROM n8nio/n8n:latest

USER root

COPY --from=builder /usr/local/bin/yt-dlp /usr/local/bin/yt-dlp
COPY --from=builder /usr/bin/ffmpeg /usr/bin/ffmpeg

USER node
