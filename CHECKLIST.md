# ✅ GitHub Pages 部署检查清单

使用本清单确保每一步都正确完成，避免常见错误！

---

## 📝 部署前准备

- [ ] 网站在本地能正常运行
  - [ ] 双击 `start_server.bat` 或运行 `start_server.sh`
  - [ ] 浏览器访问 http://localhost:8000 正常显示
  - [ ] 测试所有页面链接是否正常

- [ ] 已修改个人信息
  - [ ] 联系方式（邮箱、电话）
  - [ ] 关于我们页面的内容
  - [ ] 页脚的版权信息

---

## 🌐 GitHub账号设置

- [ ] 已注册GitHub账号
  - [ ] 用户名：________________
  - [ ] 邮箱：________________
  - [ ] 邮箱已验证 ✓

- [ ] 可以正常登录GitHub
  - [ ] 访问 https://github.com
  - [ ] 能看到个人主页

---

## 📦 仓库创建

- [ ] 已创建新仓库
  - [ ] 仓库名称：software-testing-website（或其他）
  - [ ] 仓库类型：Public（公开）✓
  - [ ] 没有勾选 "Add a README file"
  - [ ] 没有勾选 "Add .gitignore"
  - [ ] 没有勾选 "Choose a license"

- [ ] 已记录仓库地址
  - [ ] 地址格式：https://github.com/你的用户名/software-testing-website.git
  - [ ] 我的仓库地址：________________________________

---

## 🔧 Git工具安装

- [ ] 已安装Git
  - [ ] Windows: 从 git-scm.com 下载安装
  - [ ] Mac: 使用 `brew install git`
  - [ ] Linux: 使用 `apt/yum install git`

- [ ] Git安装验证
  - [ ] 打开命令行执行：`git --version`
  - [ ] 显示版本号（如：git version 2.43.0）

- [ ] Git身份配置
  - [ ] 执行：`git config --global user.name "你的用户名"`
  - [ ] 执行：`git config --global user.email "你的邮箱"`
  - [ ] 验证：`git config --list`

---

## 📤 代码上传

### 步骤1：进入目录
- [ ] 打开命令行
- [ ] 执行：`cd 你的网站目录路径`
- [ ] 确认在正确目录（执行 `dir` 或 `ls` 能看到 index.html）

### 步骤2：初始化Git
- [ ] 执行：`git init`
- [ ] 看到提示：Initialized empty Git repository

### 步骤3：添加文件
- [ ] 执行：`git add .`
- [ ] 没有报错

### 步骤4：提交文件
- [ ] 执行：`git commit -m "初始提交：创建软件测试网站"`
- [ ] 看到类似：15 files changed, 2000 insertions(+)

### 步骤5：设置分支
- [ ] 执行：`git branch -M main`

### 步骤6：关联远程仓库
- [ ] 执行：`git remote add origin 你的仓库地址`
- [ ] 检查：`git remote -v` 显示正确的地址

### 步骤7：推送代码
- [ ] 执行：`git push -u origin main`
- [ ] 完成GitHub登录验证
- [ ] 看到：Branch 'main' set up to track remote branch 'main'
- [ ] 推送成功！

---

## 🎯 GitHub Pages设置

### 进入Settings
- [ ] 访问你的GitHub仓库页面
- [ ] 点击顶部的 "Settings" 标签

### 配置Pages
- [ ] 在左侧菜单找到并点击 "Pages"
- [ ] Source 选择 "Deploy from a branch"
- [ ] Branch 第一个下拉框选择 "main"
- [ ] Branch 第二个下拉框选择 "/(root)"
- [ ] 点击 "Save" 按钮
- [ ] 看到提示：GitHub Pages source saved

### 等待部署
- [ ] 刷新页面（F5）
- [ ] 看到：Your site is live at https://...
- [ ] 等待1-5分钟

---

## 🌍 访问测试

- [ ] 复制你的网站地址
  - [ ] 格式：https://你的用户名.github.io/software-testing-website/
  - [ ] 我的网站地址：________________________________

- [ ] 在浏览器新标签页打开
  - [ ] 网站正常显示 ✓
  - [ ] 首页能正常访问
  - [ ] 导航菜单正常工作
  - [ ] 所有页面都能打开

- [ ] 移动端测试（可选）
  - [ ] 在手机浏览器打开
  - [ ] 显示正常，响应式布局工作正常

---

## 🎉 分享网站

- [ ] 已获得可访问的网站地址
- [ ] 已测试从其他设备访问
- [ ] 可以分享给朋友了！

**我的网站地址：**
```
https://________________.github.io/________________/
```

---

## 🔄 后续更新检查清单

每次修改网站内容后：

- [ ] 在本地测试修改是否正常
- [ ] 打开命令行，进入网站目录
- [ ] 执行：`git add .`
- [ ] 执行：`git commit -m "修改说明"`
- [ ] 执行：`git push`
- [ ] 等待1-2分钟
- [ ] 刷新网站查看更新

---

## ❌ 常见错误排查

### 如果遇到问题，检查以下项：

#### 网站显示404
- [ ] 确认仓库是 Public 的
- [ ] 确认 GitHub Pages 已启用
- [ ] 等待5分钟后再试
- [ ] 检查网址拼写是否正确

#### Git推送失败
- [ ] 检查网络连接
- [ ] 确认已登录GitHub
- [ ] 尝试使用Personal Access Token
- [ ] 检查仓库地址是否正确

#### 样式不显示
- [ ] 检查CSS文件路径
- [ ] 打开浏览器开发者工具（F12）
- [ ] 查看Console是否有错误
- [ ] 确认所有文件都已上传

#### 命令行报错
- [ ] 仔细阅读错误信息
- [ ] 复制错误信息搜索解决方案
- [ ] 确认命令拼写正确
- [ ] 确认在正确的目录

---

## 📚 相关文档

遇到问题时，查看：

1. **详细图文教程**：`GITHUB_DEPLOY_GUIDE.md`
   - 每一步都有详细说明
   - 包含点击位置指引
   - 零基础友好

2. **快速开始**：`QUICK_START.md`
   - 适合有经验的用户
   - 5分钟快速部署

3. **部署方式对比**：`DEPLOYMENT.md`
   - 5种不同部署方案
   - 详细对比和选择建议

4. **项目说明**：`README.md`
   - 项目功能介绍
   - 本地运行方法

---

## 💡 小贴士

- ✅ 每次修改后都要执行 add → commit → push 三步
- ✅ commit 信息要写清楚修改了什么
- ✅ 推送后等待1-2分钟才能看到更新
- ✅ 定期备份代码到本地
- ✅ 保存好GitHub用户名和密码/Token

---

## 🎊 完成！

如果所有选项都打勾了，恭喜你成功部署网站到GitHub Pages！

**下一步你可以：**
- [ ] 申请自定义域名
- [ ] 添加网站统计
- [ ] 继续完善网站内容
- [ ] 分享给更多人

**祝使用愉快！** 🚀

