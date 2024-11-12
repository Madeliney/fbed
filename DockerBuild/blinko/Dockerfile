# 使用多阶段构建
FROM node:18-alpine AS build

# 安装构建依赖
RUN apk add --no-cache postgresql14-client

WORKDIR /app

# 复制依赖文件
COPY package.json pnpm-lock.yaml ./

# 安装 pnpm
RUN npm install -g pnpm

# 安装依赖
RUN pnpm install

# 复制源代码
COPY . .

# 构建应用
RUN pnpm build

# 创建运行时镜像
FROM node:18-alpine AS runtime

# 安装运行时依赖
RUN apk add --no-cache postgresql14-client

# 安装 pnpm
RUN npm install -g pnpm --no-cache

WORKDIR /app

# 从构建阶段复制构建好的文件
COPY --from=build /app .

# 运行命令
CMD ["sh", "-c", "pnpm migrate && pnpm db-seed && pnpm start"]
