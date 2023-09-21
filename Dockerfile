# 使用官方Node.js镜像作为基础镜像
FROM node:18

# 设置工作目录
WORKDIR /app

# 克隆代码到容器
RUN git clone https://521github.com/markweng/doc.git .

# 暴露应用程序运行的端口（如果需要）
EXPOSE 5000

# 启动应用程序
CMD [ "./start.sh" ]