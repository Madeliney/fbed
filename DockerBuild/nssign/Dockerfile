# https://github.com/jessfin/nssign

FROM debian:bullseye-slim

# 更新 apt 软件包索引并安装依赖项
RUN apt update && apt upgrade -y && apt install -y \
    python3-pip \
    libxdamage1 \
    libgtk-3-0 \
    libatk1.0-0 \
    libcairo-gobject2 \
    libgdk-pixbuf2.0-0 \
    libasound2 \
    libx11-xcb1 \
    && apt autoremove -y \
    && apt clean

# 设置工作目录为 /app
WORKDIR /app

# 复制当前目录下的所有文件到工作目录 /app 中
COPY . .

# 安装 Python 依赖项
RUN pip3 install --no-cache-dir -r requirements.txt

# 安装 Playwright 并配置 Firefox
RUN playwright install firefox

# 定义启动命令
CMD ["/bin/bash"]
