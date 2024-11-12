# 使用更小的基础镜像
FROM node:18-alpine AS build

# 安装 PostgreSQL 客户端
RUN apk add --no-cache postgresql14-client

# 设置工作目录
WORKDIR /app

# 复制依赖配置文件
COPY package.json pnpm-lock.yaml ./ 
COPY prisma ./ 

# 安装 pnpm，并安装依赖
RUN npm install -g pnpm && pnpm install

# 复制源代码
COPY . .

# 构建应用
RUN pnpm build

# 只保留生产依赖和构建后的文件
FROM node:18-alpine AS production

# 安装生产环境所需的依赖
RUN apk add --no-cache postgresql14-client

# 设置工作目录
WORKDIR /app

# 复制构建阶段的内容
COPY --from=build /app /app

# 设置容器启动命令
CMD ["sh", "-c", "pnpm migrate && pnpm db-seed && pnpm start"]
