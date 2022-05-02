FROM node:16-alpine as builder

# 指定工作目录，将代码添加至此
WORKDIR /app

ADD package*.json ./
RUN npm install --registry=https://registry.npm.taobao.org

COPY . .

# 如何将项目跑起来
RUN npm run build

# 选择更小体积的基础镜像
FROM nginx:alpine
# 将配置文件移至 nginx 中
COPY nginx.conf /etc/nginx
# 将构建产物移至 nginx 中
COPY --from=builder /app/dist /usr/share/nginx/html/
