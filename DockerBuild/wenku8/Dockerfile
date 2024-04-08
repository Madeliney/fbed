FROM alpine:3.16
RUN apk add --no-cache nodejs npm
# 安装项目依赖
RUN npm install --no-cache -g wenku8 

# 默认容器启动命令
CMD ["wenku8"]
