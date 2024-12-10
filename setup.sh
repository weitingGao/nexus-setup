#!/bin/bash

# 下载并安装 protoc
wget https://github.com/protocolbuffers/protobuf/releases/download/v29.1/protoc-29.1-linux-x86_64.zip
unzip protoc-29.1-linux-x86_64.zip -d protoc_install
sudo mv protoc_install/bin/protoc /usr/local/bin/
sudo chmod +x /usr/local/bin/protoc

# 更新系统
sudo yum update -y

# 安装 Git
sudo yum install -y git

# 安装 Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env

# 安装 Node.js 和 npm
sudo yum install -y nodejs npm

# 安装 PM2
sudo npm install -g pm2

# 安装 Nexus CLI
curl https://cli.nexus.xyz/ | sh

echo "安装完成！"
