# Docker 使用说明

## 遇到报错 & 解决办法

- `COPY . .` 报错
  - [解决方案](https://stackoverflow.com/questions/72955265/cannot-replace-to-directory-var-lib-docker-overlay2-if2ip5okvavl8u6jpdtpczuog-m)
  - 新建 `.dockerignore` 文件,排除 `node_modules` 等文件
  - 或 直接删除不需要的文件
- 将构建产物移至 nginx 中 报错
  - 构建路径是系统根路径, 因此不能使用相对路径, 需要完整路径
  - 如 `WORKDIR /app` 则 `COPY --from=builder **/app/dist** /usr/share/nginx/html/`
- Nginx服务器导致CSS以及js无法解析不起效果
  - [解决方案](https://blog.csdn.net/huangshanchun/article/details/50082101)

  ```
  http {
    include       mime.types;
  }
  ```
