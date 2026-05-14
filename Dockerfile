FROM alpine:3.20 AS yt

RUN apk add --no-cache python3 py3-pip ffmpeg && \
    pip install yt-dlp

FROM n8nio/n8n:latest

USER root

COPY --from=yt /usr/bin/python3 /usr/bin/python3
COPY --from=yt /usr/bin/ffmpeg /usr/bin/ffmpeg
COPY --from=yt /usr/lib /usr/lib
COPY --from=yt /usr/local/bin/yt-dlp /usr/local/bin/yt-dlp

USER node
