# 使用官方Node.js镜像作为基础镜像
FROM node:18

RUN localedef -i en_US -f UTF-8 en_US.UTF-8

# 设置工作目录
WORKDIR /app

# 克隆代码到容器
RUN git clone https://521github.com/markweng/doc.git

RUN npm run install -dd

# 暴露应用程序运行的端口（如果需要）
EXPOSE 5000

# 启动应用程序
CMD ["npm", "serve"]
