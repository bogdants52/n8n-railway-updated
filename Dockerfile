FROM python:3.11-slim

RUN apt-get update && \
    apt-get install -y ffmpeg curl && \
    pip install yt-dlp

RUN npm install -g n8n

EXPOSE 5678

CMD ["n8n"]
