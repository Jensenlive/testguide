@echo off
echo ================================
echo   软件测试专家网站 - 本地服务器
echo ================================
echo.
echo 正在启动服务器...
echo.

REM 检查Python是否安装
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [错误] 未检测到Python，请先安装Python
    echo.
    echo 下载地址: https://www.python.org/downloads/
    pause
    exit /b 1
)

echo [成功] 检测到Python
echo.
echo 启动本地服务器...
echo 服务器地址: http://localhost:8000
echo.
echo 按 Ctrl+C 停止服务器
echo ================================
echo.

REM 启动Python HTTP服务器
python -m http.server 8000

pause

