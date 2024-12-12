LABEL maintainer="Anyshpm Chen<anyshpm@anyshpm.com>"
LABEL description="Whisper语音识别服务的Docker镜像"

# 使用 Python 3.9 作为基础镜像
FROM python:3.9-slim

# 安装系统依赖
RUN apt-get update && apt-get install -y \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# 安装 Python 依赖
RUN pip install --no-cache-dir \
    torch \
    openai-whisper
