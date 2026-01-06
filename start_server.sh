#!/bin/bash

echo "================================"
echo "  软件测试专家网站 - 本地服务器"
echo "================================"
echo ""
echo "正在启动服务器..."
echo ""

# 检查Python是否安装
if ! command -v python3 &> /dev/null && ! command -v python &> /dev/null
then
    echo "[错误] 未检测到Python，请先安装Python"
    echo ""
    echo "安装命令:"
    echo "  Ubuntu/Debian: sudo apt install python3"
    echo "  macOS: brew install python3"
    exit 1
fi

echo "[成功] 检测到Python"
echo ""
echo "启动本地服务器..."
echo "服务器地址: http://localhost:8000"
echo ""
echo "按 Ctrl+C 停止服务器"
echo "================================"
echo ""

# 尝试使用 python3，如果不存在则使用 python
if command -v python3 &> /dev/null
then
    python3 -m http.server 8000
else
    python -m http.server 8000
fi







