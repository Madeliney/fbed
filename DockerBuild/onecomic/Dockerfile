FROM python:3.9.2-alpine

WORKDIR /app

# 安装 Node.js 16
RUN apk add --no-cache nodejs npm

# 安装 onecomic
RUN pip install --upgrade pip
RUN pip install -U onecomic
#
## 设置启动命令或默认执行的脚本
CMD ["/bin/sh"]
