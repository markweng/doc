# 使用官方Node.js镜像作为基础镜像
FROM node:17

# 设置工作目录
WORKDIR /app

# 克隆代码到容器
RUN git clone https://github.com/markweng/doc.git .

# 安装npm依赖
RUN npm install

# 执行构建命令（假设项目使用npm构建，如果使用其他构建工具，请相应更改此命令）
RUN npm run serve

# 暴露应用程序运行的端口（如果需要）
EXPOSE 5000

# 启动应用程序
CMD [ "npm", "start" ]