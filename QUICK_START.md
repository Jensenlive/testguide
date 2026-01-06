# 快速开始指南

## 🚀 5分钟部署到GitHub Pages

如果你已经熟悉基本操作，可以按照这个快速指南：

### 1️⃣ 创建GitHub账号和仓库（首次）

```
访问 https://github.com
→ 注册账号（Sign up）
→ 验证邮箱
→ 点击右上角 [+] 
→ New repository
→ 填写仓库名：software-testing-website
→ 选择 Public
→ 点击 Create repository
```

### 2️⃣ 安装Git（首次）

**Windows:** https://git-scm.com/download/win

**Mac:** `brew install git`

**Linux:** `sudo apt install git`

### 3️⃣ 上传代码

打开命令行，依次执行：

```bash
# 进入网站目录（修改为你的路径）
cd D:\Cursor_working\software_testing_website

# 配置Git身份（首次，替换为你的信息）
git config --global user.name "你的GitHub用户名"
git config --global user.email "你的邮箱"

# 初始化并上传
git init
git add .
git commit -m "初始提交"
git branch -M main
git remote add origin https://github.com/你的用户名/software-testing-website.git
git push -u origin main
```

### 4️⃣ 启用GitHub Pages

```
进入GitHub仓库页面
→ Settings
→ 左侧菜单 Pages
→ Source 选择 "Deploy from a branch"
→ Branch 选择 "main" 和 "/(root)"
→ 点击 Save
→ 等待1-5分钟
```

### 5️⃣ 访问网站

```
https://你的用户名.github.io/software-testing-website/
```

---

## 📝 更新网站

修改文件后，执行：

```bash
cd D:\Cursor_working\software_testing_website
git add .
git commit -m "更新说明"
git push
```

---

## 🔗 相关文档

- **详细图文教程**: 查看 `GITHUB_DEPLOY_GUIDE.md`
- **其他部署方式**: 查看 `DEPLOYMENT.md`
- **项目说明**: 查看 `README.md`

---

## ⚡ 命令速查

```bash
# 查看状态
git status

# 添加文件
git add .                    # 添加所有文件
git add index.html          # 添加指定文件

# 提交
git commit -m "说明文字"

# 推送
git push

# 拉取最新代码
git pull

# 查看历史
git log

# 查看远程仓库
git remote -v
```

---

## ❗ 遇到问题？

查看详细教程：`GITHUB_DEPLOY_GUIDE.md`

里面包含：
- ✅ 每一步的详细截图说明
- ✅ 常见错误解决方案
- ✅ 详细的点击位置指引
- ✅ 问题排查步骤

**祝你部署顺利！** 🎉







