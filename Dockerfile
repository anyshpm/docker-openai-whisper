# 使用 Python 3.9 作为基础镜像
FROM python:3.9-slim

LABEL maintainer="Anyshpm Chen<anyshpm@anyshpm.com>" \
      description="Whisper语音识别服务的Docker镜像"

WORKDIR /app

# 安装系统依赖和Python依赖
RUN apt-get update && \
    apt-get install -y --no-install-recommends ffmpeg && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir openai-whisper==20240930
