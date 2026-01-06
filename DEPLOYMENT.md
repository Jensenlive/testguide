# 部署指南

本文档详细说明如何将软件测试专家网站部署到互联网，让其他人可以通过外网访问。

## 📋 目录

- [准备工作](#准备工作)
- [部署方式对比](#部署方式对比)
- [详细部署步骤](#详细部署步骤)
  - [GitHub Pages](#方案一github-pages免费推荐)
  - [Netlify](#方案二netlify免费简单)
  - [Vercel](#方案三vercel免费快速)
  - [Gitee Pages](#方案四gitee-pages国内推荐)
  - [云服务器](#方案五云服务器自由度高)
- [自定义域名](#自定义域名)
- [常见问题](#常见问题)

## 准备工作

在开始部署之前，请确保：

1. ✅ 网站在本地运行正常
2. ✅ 已安装 Git（用于代码管理）
3. ✅ 有一个 GitHub/Gitee 账号（推荐）
4. ✅ 已修改网站中的联系方式等个人信息

## 部署方式对比

| 平台 | 优点 | 缺点 | 适合人群 | 费用 |
|------|------|------|----------|------|
| GitHub Pages | 稳定、免费、支持自定义域名 | 国内访问可能较慢 | 有GitHub账号的用户 | 免费 |
| Netlify | 简单、自动部署、CDN加速 | 需要注册账号 | 追求简单的用户 | 免费 |
| Vercel | 极快、自动部署、全球CDN | 需要注册账号 | 追求速度的用户 | 免费 |
| Gitee Pages | 国内访问快、稳定 | 需要实名认证 | 国内用户 | 免费 |
| 云服务器 | 完全控制、可扩展 | 需要一定技术、有成本 | 有技术基础的用户 | 付费 |

## 详细部署步骤

### 方案一：GitHub Pages（免费，推荐）

#### 优点
- ✅ 完全免费
- ✅ 支持自定义域名
- ✅ 自动HTTPS
- ✅ 稳定可靠

#### 步骤

**1. 创建 GitHub 账号**
- 访问 [https://github.com](https://github.com)
- 点击 Sign up 注册账号

**2. 创建新仓库**
```bash
# 方式1: 在GitHub网站上创建
1. 登录GitHub
2. 点击右上角 "+" → "New repository"
3. 仓库名输入: software-testing-website
4. 选择 Public
5. 点击 "Create repository"
```

**3. 上传代码到 GitHub**
```bash
# 打开命令行，进入网站目录
cd software_testing_website

# 初始化Git仓库
git init

# 添加所有文件
git add .

# 提交代码
git commit -m "初始提交：软件测试网站"

# 设置主分支名称
git branch -M main

# 关联远程仓库（替换为你的用户名）
git remote add origin https://github.com/你的用户名/software-testing-website.git

# 推送代码
git push -u origin main
```

**4. 启用 GitHub Pages**
```
1. 进入仓库页面
2. 点击 Settings（设置）
3. 左侧菜单找到 Pages
4. Source 选择 "Deploy from a branch"
5. Branch 选择 "main" 和 "/(root)"
6. 点击 Save
7. 等待1-2分钟
```

**5. 访问网站**
```
你的网站将在以下地址可访问：
https://你的用户名.github.io/software-testing-website/
```

#### 注意事项
- 首次部署可能需要等待几分钟
- 确保仓库是 Public（公开的）
- 推送代码后会自动更新网站

---

### 方案二：Netlify（免费，简单）

#### 优点
- ✅ 部署超级简单
- ✅ 自动部署
- ✅ 全球CDN加速
- ✅ 免费SSL证书

#### 步骤

**方式A：拖拽部署（最简单）**

1. **访问 Netlify**
   - 打开 [https://www.netlify.com](https://www.netlify.com)
   - 点击 "Sign up" 注册（可以用GitHub账号登录）

2. **部署网站**
   - 登录后，进入控制台
   - 找到 "Sites" 页面
   - 将 `software_testing_website` 文件夹拖拽到页面中
   - 等待部署完成（通常30秒内）

3. **访问网站**
   - 部署完成后会自动生成一个网址
   - 格式：`https://random-name.netlify.app`

4. **自定义网站名称**
   - 点击 "Site settings"
   - 点击 "Change site name"
   - 输入你想要的名称（如：software-testing）
   - 新网址：`https://software-testing.netlify.app`

**方式B：连接 GitHub（推荐）**

1. 将代码推送到 GitHub（参考方案一的步骤3）

2. 在 Netlify 中：
   - 点击 "Add new site" → "Import an existing project"
   - 选择 "GitHub"
   - 授权 Netlify 访问你的 GitHub
   - 选择仓库 `software-testing-website`
   - Build settings 保持默认
   - 点击 "Deploy site"

3. 享受自动部署
   - 每次推送代码到 GitHub，网站会自动更新

---

### 方案三：Vercel（免费，快速）

#### 优点
- ✅ 部署速度快
- ✅ 全球CDN
- ✅ 自动HTTPS
- ✅ 完美支持前端项目

#### 步骤

1. **访问 Vercel**
   - 打开 [https://vercel.com](https://vercel.com)
   - 用 GitHub 账号登录

2. **导入项目**
   - 点击 "Add New..." → "Project"
   - 选择 "Import Git Repository"
   - 选择你的 GitHub 仓库
   - 点击 "Import"

3. **配置项目**
   - Framework Preset: 选择 "Other"
   - Root Directory: `./`
   - 点击 "Deploy"

4. **访问网站**
   - 部署完成后获得网址
   - 格式：`https://项目名.vercel.app`

---

### 方案四：Gitee Pages（国内推荐）

#### 优点
- ✅ 国内访问速度快
- ✅ 免费
- ✅ 中文界面
- ✅ 稳定可靠

#### 步骤

1. **注册 Gitee**
   - 访问 [https://gitee.com](https://gitee.com)
   - 注册账号（需要手机号）
   - 进行实名认证（启用Pages服务需要）

2. **创建仓库**
   - 点击右上角 "+" → "新建仓库"
   - 仓库名：software-testing-website
   - 选择"公开"
   - 点击"创建"

3. **上传代码**
```bash
cd software_testing_website
git init
git add .
git commit -m "初始提交"
git remote add origin https://gitee.com/你的用户名/software-testing-website.git
git push -u origin master
```

4. **启用 Gitee Pages**
   - 进入仓库页面
   - 点击 "服务" → "Gitee Pages"
   - 点击 "启动"
   - 等待部署完成

5. **访问网站**
   - 网址：`https://你的用户名.gitee.io/software-testing-website`

#### 注意事项
- 必须完成实名认证才能使用Pages服务
- 更新代码后需要手动点击"更新"按钮

---

### 方案五：云服务器（自由度高）

#### 适合场景
- 需要运行后端服务
- 需要完全控制服务器
- 有一定技术基础

#### 推荐服务商
- 阿里云：[https://www.aliyun.com](https://www.aliyun.com)
- 腾讯云：[https://cloud.tencent.com](https://cloud.tencent.com)
- 华为云：[https://www.huaweicloud.com](https://www.huaweicloud.com)

#### 步骤

**1. 购买服务器**
- 选择配置：1核2G即可（学生机更便宜）
- 操作系统：Ubuntu 20.04 或 CentOS 7+
- 带宽：1M即可

**2. 安装 Nginx**
```bash
# Ubuntu
sudo apt update
sudo apt install nginx

# CentOS
sudo yum install nginx
```

**3. 上传网站文件**
```bash
# 使用 SCP 上传
scp -r software_testing_website/* root@你的服务器IP:/usr/share/nginx/html/

# 或使用 FTP 工具（如 FileZilla）上传
```

**4. 配置 Nginx**
```bash
# 编辑配置文件
sudo nano /etc/nginx/sites-available/default

# 确保 root 指向正确的目录
root /usr/share/nginx/html;

# 重启 Nginx
sudo systemctl restart nginx
```

**5. 配置防火墙**
```bash
# 开放 80 端口
sudo ufw allow 80
sudo ufw allow 443  # HTTPS
```

**6. 访问网站**
- 浏览器访问：`http://你的服务器IP`

**7. 配置域名（可选）**
- 购买域名
- 将域名解析到服务器IP
- 配置 Nginx 虚拟主机
- 申请 SSL 证书（使用 Let's Encrypt 免费）

```bash
# 安装 Certbot
sudo apt install certbot python3-certbot-nginx

# 申请证书
sudo certbot --nginx -d yourdomain.com
```

---

## 自定义域名

### 为什么需要自定义域名？
- ✅ 更专业的外观
- ✅ 易于记忆
- ✅ 提升品牌形象

### 购买域名

**推荐域名注册商：**
1. **阿里云（万网）** - [https://wanwang.aliyun.com](https://wanwang.aliyun.com)
2. **腾讯云** - [https://dnspod.cloud.tencent.com](https://dnspod.cloud.tencent.com)
3. **Namesilo** - [https://www.namesilo.com](https://www.namesilo.com)（国际）

**价格参考：**
- `.com` 域名：约 60-80 元/年
- `.cn` 域名：约 30-50 元/年
- `.xyz` 域名：约 10-20 元/年

### 配置自定义域名

#### GitHub Pages
```
1. 在仓库根目录创建 CNAME 文件
2. 文件内容写入你的域名（如：www.yourdomain.com）
3. 提交到 GitHub
4. 在域名管理中添加 CNAME 记录指向：你的用户名.github.io
```

#### Netlify
```
1. 进入 Site settings → Domain management
2. 点击 "Add custom domain"
3. 输入你的域名
4. 按照提示配置 DNS 记录
```

#### Vercel
```
1. 进入项目 Settings → Domains
2. 输入你的域名
3. 按照提示配置 DNS 记录
```

### DNS 配置示例

在你的域名管理面板中添加以下记录：

**A记录（指向IP）：**
```
类型：A
主机记录：@
记录值：服务器IP地址
TTL：600
```

**CNAME记录（指向域名）：**
```
类型：CNAME
主机记录：www
记录值：your-site.netlify.app
TTL：600
```

---

## 常见问题

### Q1: 网站部署后无法访问？
**A:** 
- 检查文件是否上传完整
- 等待几分钟让DNS生效
- 清除浏览器缓存
- 检查防火墙设置

### Q2: 图标不显示？
**A:** 
- 检查网络连接（Font Awesome使用CDN）
- 如果需要离线，下载Font Awesome到本地

### Q3: 移动端显示异常？
**A:** 
- 确保HTML中有viewport meta标签
- 使用Chrome开发者工具检查响应式样式

### Q4: GitHub Pages 国内访问慢？
**A:** 
- 使用Gitee Pages替代
- 或使用Netlify/Vercel（有CDN加速）

### Q5: 如何更新网站内容？
**A:** 
- GitHub Pages: `git push` 推送代码即可
- Netlify/Vercel: 推送到GitHub会自动部署
- Gitee Pages: 推送后需手动点击"更新"
- 云服务器: 重新上传文件

### Q6: 需要备案吗？
**A:** 
- GitHub Pages/Netlify/Vercel: 不需要备案
- Gitee Pages: 不需要备案
- 国内云服务器使用自己域名: **需要备案**

### Q7: 如何添加统计代码？
**A:** 
在 `</body>` 标签前添加百度统计或Google Analytics代码

### Q8: 网站加载慢怎么办？
**A:** 
- 压缩图片
- 使用CDN加速
- 启用Gzip压缩
- 使用更快的托管平台

---

## 🎉 部署成功！

恭喜！你的网站已经成功部署到互联网上了。现在你可以：

1. ✅ 分享网址给朋友和同事
2. ✅ 在简历中展示你的作品
3. ✅ 继续添加更多内容
4. ✅ 配置自定义域名
5. ✅ 添加网站统计

## 📞 需要帮助？

如果在部署过程中遇到问题：

1. 查看本文档的常见问题部分
2. 搜索相关错误信息
3. 访问对应平台的官方文档
4. 在GitHub上提Issue

**祝你部署顺利！** 🚀







