# 软件测试专家网站

一个专业的软件测试知识分享平台，提供系统化的测试教程、工具介绍和实战案例。

## 🎯 快速导航

- **🚀 想快速部署？** → 查看 [`QUICK_START.md`](QUICK_START.md) - 5分钟快速上手
- **📖 第一次用GitHub？** → 查看 [`GITHUB_DEPLOY_GUIDE.md`](GITHUB_DEPLOY_GUIDE.md) - 手把手详细教程（零基础友好）
- **🌐 想了解更多部署方式？** → 查看 [`DEPLOYMENT.md`](DEPLOYMENT.md) - 5种部署方案详细对比

## 📋 项目简介

本项目是一个现代化的静态网站，专注于软件测试领域的知识分享和技术交流。网站采用响应式设计，支持移动端和桌面端访问。

### 主要功能

- 🏠 **首页**: 展示平台特色和核心服务
- 📚 **测试教程**: 从基础到高级的系统化测试教程
- 🛠️ **测试工具**: 精选主流测试工具介绍和使用指南
- 💼 **案例展示**: 真实项目测试案例分析
- 📝 **技术博客**: 测试经验分享和技术文章
- 👥 **关于我们**: 团队介绍和联系方式

## 🎨 技术栈

- **前端**: HTML5, CSS3, JavaScript (ES6+)
- **图标**: Font Awesome 6.4.0
- **设计**: 响应式设计，支持移动端
- **动画**: CSS动画 + JavaScript交互

## 📁 项目结构

```
software_testing_website/
├── index.html              # 首页
├── tutorials.html          # 教程页面
├── tools.html             # 工具介绍页面
├── cases.html             # 案例展示页面
├── blog.html              # 博客页面
├── about.html             # 关于我们页面
├── css/
│   ├── style.css          # 全局样式
│   ├── tutorials.css      # 教程页面样式
│   ├── tools.css          # 工具页面样式
│   ├── cases.css          # 案例页面样式
│   ├── blog.css           # 博客页面样式
│   └── about.css          # 关于页面样式
├── js/
│   ├── main.js            # 主要JavaScript功能
│   └── tutorials.js       # 教程页面交互
└── README.md              # 项目说明文档
```

## 🚀 快速开始

### 本地运行

1. **克隆或下载项目**
   ```bash
   cd software_testing_website
   ```

2. **直接打开HTML文件**
   
   在浏览器中打开 `index.html` 文件即可查看网站。

3. **使用本地服务器（推荐）**

   **方法一：使用Python**
   ```bash
   # Python 3
   python -m http.server 8000
   
   # Python 2
   python -m SimpleHTTPServer 8000
   ```
   然后在浏览器访问: http://localhost:8000

   **方法二：使用Node.js (http-server)**
   ```bash
   # 安装http-server
   npm install -g http-server
   
   # 运行服务器
   http-server -p 8000
   ```
   然后在浏览器访问: http://localhost:8000

   **方法三：使用PHP**
   ```bash
   php -S localhost:8000
   ```

   **方法四：使用VS Code Live Server插件**
   - 安装 Live Server 扩展
   - 右键点击 index.html
   - 选择 "Open with Live Server"

## 🌐 部署到互联网

### 方式一：使用 GitHub Pages（免费，推荐）

1. **创建GitHub仓库**
   - 登录 GitHub，创建新仓库
   - 仓库名可以是任意名称，如 `software-testing-website`

2. **上传代码**
   ```bash
   git init
   git add .
   git commit -m "初始提交"
   git branch -M main
   git remote add origin https://github.com/你的用户名/software-testing-website.git
   git push -u origin main
   ```

3. **配置 GitHub Pages**
   - 进入仓库的 Settings
   - 找到 Pages 选项
   - Source 选择 "main" 分支
   - 点击 Save
   - 等待几分钟后，网站将在 `https://你的用户名.github.io/software-testing-website/` 可访问

### 方式二：使用 Netlify（免费，简单）

1. **访问 Netlify**
   - 访问 [https://www.netlify.com/](https://www.netlify.com/)
   - 注册或登录账号

2. **部署网站**
   - 方式1: 拖拽整个 `software_testing_website` 文件夹到 Netlify
   - 方式2: 连接 GitHub 仓库自动部署

3. **获取网址**
   - 部署完成后会得到一个 `.netlify.app` 域名
   - 可以自定义域名

### 方式三：使用 Vercel（免费）

1. **访问 Vercel**
   - 访问 [https://vercel.com/](https://vercel.com/)
   - 使用 GitHub 账号登录

2. **导入项目**
   - 点击 "New Project"
   - 导入 GitHub 仓库
   - 点击 Deploy

3. **访问网站**
   - 部署完成后获得 `.vercel.app` 域名

### 方式四：使用传统虚拟主机

1. **购买虚拟主机和域名**
   - 可以选择阿里云、腾讯云等云服务商

2. **上传文件**
   - 使用 FTP 工具（如 FileZilla）
   - 将所有文件上传到网站根目录

3. **配置域名**
   - 将域名解析到主机IP
   - 配置网站根目录

### 方式五：使用 Gitee Pages（国内访问快）

1. **创建 Gitee 仓库**
   - 访问 [https://gitee.com/](https://gitee.com/)
   - 创建新仓库并上传代码

2. **开启 Gitee Pages**
   - 进入仓库的服务 → Gitee Pages
   - 点击启动
   - 获得访问地址

## 🔧 自定义配置

### 修改网站信息

1. **修改网站标题和描述**
   - 编辑各个 HTML 文件的 `<title>` 和 `<meta>` 标签

2. **修改联系方式**
   - 编辑 `about.html` 中的联系信息
   - 编辑页脚中的联系方式

3. **修改颜色主题**
   - 编辑 `css/style.css` 中的 `:root` 变量
   ```css
   :root {
       --primary-color: #2563eb;  /* 主色调 */
       --secondary-color: #7c3aed; /* 辅助色 */
       --accent-color: #f59e0b;   /* 强调色 */
   }
   ```

### 添加内容

1. **添加教程**
   - 编辑 `tutorials.html`
   - 在相应分类下添加新的 `.tutorial-item`

2. **添加工具介绍**
   - 编辑 `tools.html`
   - 在相应分类下添加新的 `.tool-card`

3. **添加案例**
   - 编辑 `cases.html`
   - 添加新的 `.case-card`

4. **添加博客文章**
   - 编辑 `blog.html`
   - 添加新的 `.blog-post`

## 📱 浏览器兼容性

- ✅ Chrome (推荐)
- ✅ Firefox
- ✅ Safari
- ✅ Edge
- ✅ 移动端浏览器

## 🎯 特色功能

- **响应式设计**: 完美适配各种屏幕尺寸
- **平滑动画**: 流畅的页面交互体验
- **SEO友好**: 良好的搜索引擎优化
- **快速加载**: 纯静态页面，加载速度快
- **易于维护**: 代码结构清晰，便于修改

## 📝 更新日志

### v1.0.0 (2025-11-28)
- ✨ 初始版本发布
- ✅ 完成首页设计
- ✅ 完成教程页面
- ✅ 完成工具介绍页面
- ✅ 完成案例展示页面
- ✅ 完成博客页面
- ✅ 完成关于页面
- ✅ 实现响应式设计
- ✅ 添加交互动画

## 🤝 贡献

欢迎提交问题和改进建议！

## 📄 许可证

本项目采用 MIT 许可证。

## 📧 联系方式

- 邮箱: testing@example.com
- 电话: 400-123-4567
- 地址: 中国·北京

---

**注意事项：**
1. 网站使用了 Font Awesome CDN，需要互联网连接才能显示图标
2. 如需离线使用，请下载 Font Awesome 文件到本地
3. 建议使用现代浏览器访问以获得最佳体验
4. 部署到生产环境前，请修改联系方式等信息

**开始使用吧！祝你的测试网站运行顺利！** 🚀

