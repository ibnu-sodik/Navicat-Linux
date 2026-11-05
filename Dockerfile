FROM ubuntu:22.04

RUN apt update && apt install -y \
    build-essential \
    wget \
    cmake \
    git \
    pkg-config \
    python3 \
    libfmt-dev \
    libssl-dev \
    libfuse2 \
    appstream \
    file \
    rapidjson-dev && \
    git config --global --add safe.directory '*'

WORKDIR /patcher

COPY . .

RUN chmod +x start.sh