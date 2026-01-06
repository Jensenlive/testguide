# GitHub Pages 部署详细指南（零基础版）

本指南将手把手教你如何将网站部署到GitHub Pages，让全世界的人都能访问你的网站！

## 📋 目录

1. [准备工作](#第一步准备工作)
2. [注册GitHub账号](#第二步注册github账号)
3. [创建仓库](#第三步创建github仓库)
4. [安装Git](#第四步安装git)
5. [上传代码](#第五步上传代码到github)
6. [启用GitHub Pages](#第六步启用github-pages)
7. [访问网站](#第七步访问你的网站)
8. [更新网站](#第八步如何更新网站内容)

---

## 第一步：准备工作

### ✅ 确认网站在本地能正常运行

1. **找到网站文件夹**
   - 确认你有 `software_testing_website` 文件夹
   - 里面有 `index.html` 等文件

2. **测试网站**
   - Windows：双击 `start_server.bat`
   - Mac/Linux：在终端运行 `bash start_server.sh`
   - 浏览器访问 http://localhost:8000
   - 确认网站正常显示

---

## 第二步：注册GitHub账号

### 1. 访问GitHub官网

在浏览器地址栏输入：**https://github.com**

### 2. 注册账号

**页面右上角找到并点击：**
```
┌─────────────────────────────────────┐
│  GitHub Logo    [Sign in]  [Sign up]│
└─────────────────────────────────────┘
           点击这里 ↑
```

**填写注册信息：**

① **Email address（邮箱地址）**
```
输入你的邮箱，例如：yourname@example.com
```

② **Password（密码）**
```
输入一个强密码，至少8个字符，包含大小写字母和数字
例如：MyPassword123
```

③ **Username（用户名）**
```
输入用户名（只能包含字母、数字和连字符）
例如：zhangsan-testing
注意：这个用户名会出现在你的网址中！
```

④ **Email preferences（邮件偏好）**
```
可以取消勾选"Send me occasional product updates"
```

⑤ **验证身份**
```
完成人机验证（Verify）
可能会要求你选择图片或解答问题
```

⑥ **点击绿色按钮：Create account**

### 3. 验证邮箱

① 打开你的邮箱
② 找到GitHub发来的邮件（标题：[GitHub] Please verify your email address）
③ 点击邮件中的验证链接
④ 验证成功后会跳转到GitHub

### 4. 完成初始设置

GitHub可能会问你几个问题：
- What do you want to do first?（你想先做什么？）
  - 选择：**Continue for free**（继续免费使用）

恭喜！GitHub账号注册完成！🎉

---

## 第三步：创建GitHub仓库

### 1. 进入GitHub首页

登录后，你会看到GitHub的主页面

### 2. 创建新仓库

**方式A：点击右上角的加号**
```
页面右上角找到你的头像左边，有一个 [+] 按钮
点击 [+] → 选择 "New repository"
```

**方式B：点击左侧的New按钮**
```
左侧栏找到 "Top Repositories" 旁边的绿色 [New] 按钮
点击它
```

### 3. 填写仓库信息

现在你会看到 "Create a new repository" 页面

#### ① Repository name（仓库名称）**必填**
```
┌────────────────────────────────────┐
│ Repository name *                  │
│ ┌────────────────────────────────┐ │
│ │ software-testing-website       │ │
│ └────────────────────────────────┘ │
└────────────────────────────────────┘

建议填写：software-testing-website
（可以用其他名字，但只能包含字母、数字、连字符和下划线）
```

#### ② Description（描述）**可选**
```
┌────────────────────────────────────┐
│ Description (optional)             │
│ ┌────────────────────────────────┐ │
│ │ 软件测试知识分享平台           │ │
│ └────────────────────────────────┘ │
└────────────────────────────────────┘

可以填写：软件测试知识分享平台
（这是可选的，可以不填）
```

#### ③ Public/Private（公开/私有）**重要！**
```
● Public  ○ Private
↑ 必须选这个！

一定要选择 Public（公开）！
如果选择Private（私有），GitHub Pages将无法使用（免费版）
```

#### ④ Initialize this repository（初始化仓库）
```
❌ 不要勾选以下任何选项：
   □ Add a README file
   □ Add .gitignore
   □ Choose a license

这些我们都已经准备好了，不需要GitHub自动生成
```

### 4. 创建仓库

**点击页面底部的绿色按钮：**
```
┌──────────────────────────┐
│  Create repository       │
└──────────────────────────┘
      点击这里
```

### 5. 记录仓库地址

创建成功后，你会看到一个快速设置页面，找到仓库地址：

```
Quick setup — if you've done this kind of thing before

HTTPS  [SSH]
┌────────────────────────────────────────────────────────┐
│ https://github.com/你的用户名/software-testing-website │ 
└────────────────────────────────────────────────────────┘
  [复制按钮]
```

**请复制这个地址，后面会用到！**

---

## 第四步：安装Git

Git是代码版本管理工具，我们需要用它来上传代码。

### Windows用户

#### 1. 下载Git

访问：**https://git-scm.com/download/win**

- 页面会自动下载最新版本
- 或者点击 "Click here to download manually"

#### 2. 安装Git

① 双击下载的安装包（例如：Git-2.43.0-64-bit.exe）

② **安装向导 - 一路Next即可，但注意以下几个页面：**

**Select Components（选择组件）**
```
✓ Windows Explorer integration
  ✓ Git Bash Here
  ✓ Git GUI Here
✓ Git LFS (Large File Support)
✓ Associate .git* configuration files with the default text editor
✓ Associate .sh files to be run with Bash

保持默认勾选即可，点击 [Next]
```

**Choosing the default editor（选择默认编辑器）**
```
建议选择：Use Visual Studio Code as Git's default editor
（如果你安装了VS Code）

或者保持默认：Use Vim
点击 [Next]
```

**其他页面都选择默认选项，一直点击 [Next]**

最后点击 **[Install]** 开始安装

安装完成后点击 **[Finish]**

#### 3. 验证安装

① 按键盘 `Win + R`
② 输入 `cmd` 按回车
③ 在命令提示符中输入：
```bash
git --version
```
④ 如果显示版本号（如：git version 2.43.0），说明安装成功！

### Mac用户

#### 方法一：使用Homebrew（推荐）

打开终端，输入：
```bash
brew install git
```

#### 方法二：下载安装包

访问：**https://git-scm.com/download/mac**

下载并安装

#### 验证安装
```bash
git --version
```

### Linux用户

#### Ubuntu/Debian
```bash
sudo apt update
sudo apt install git
```

#### CentOS/Fedora
```bash
sudo yum install git
```

---

## 第五步：上传代码到GitHub

### 1. 打开命令行

**Windows用户：**
- 按 `Win + R`
- 输入 `cmd`
- 按回车

**Mac/Linux用户：**
- 打开 Terminal（终端）

### 2. 进入网站目录

在命令行中输入（根据你的实际路径修改）：

**Windows示例：**
```bash
cd D:\Cursor_working\software_testing_website
```

**Mac/Linux示例：**
```bash
cd ~/Desktop/software_testing_website
```

**如何找到正确的路径？**
- Windows：在文件夹地址栏复制路径
- Mac：拖动文件夹到终端窗口会自动填入路径

### 3. 配置Git身份（首次使用）

**输入以下命令（替换成你自己的信息）：**

```bash
git config --global user.name "你的GitHub用户名"
```

例如：
```bash
git config --global user.name "zhangsan-testing"
```

按回车，然后输入：

```bash
git config --global user.email "你的GitHub邮箱"
```

例如：
```bash
git config --global user.email "yourname@example.com"
```

### 4. 初始化Git仓库

```bash
git init
```

你会看到：
```
Initialized empty Git repository in D:/Cursor_working/software_testing_website/.git/
```

### 5. 添加所有文件

```bash
git add .
```

**注意：** `add` 后面有一个空格，然后是一个点（.）

### 6. 提交文件

```bash
git commit -m "初始提交：创建软件测试网站"
```

你会看到类似输出：
```
[master (root-commit) abc1234] 初始提交：创建软件测试网站
 15 files changed, 2000 insertions(+)
 create mode 100644 index.html
 ...
```

### 7. 设置主分支名称

```bash
git branch -M main
```

### 8. 关联远程仓库

**重要：替换下面的地址为你自己的仓库地址！**

```bash
git remote add origin https://github.com/你的用户名/software-testing-website.git
```

**完整示例：**
```bash
git remote add origin https://github.com/zhangsan-testing/software-testing-website.git
```

**如何找到你的仓库地址？**
1. 打开浏览器，登录GitHub
2. 进入你刚创建的仓库
3. 点击绿色的 [Code] 按钮
4. 复制 HTTPS 地址

### 9. 推送代码到GitHub

```bash
git push -u origin main
```

**第一次推送会要求登录：**

#### Windows用户：
会弹出登录窗口：
```
┌─────────────────────────────────┐
│  Sign in to GitHub              │
│                                 │
│  Browser: [Sign in with...]    │
│  Token:   [Use token]           │
└─────────────────────────────────┘
```

**推荐方式：点击 "Sign in with your browser"**
1. 会自动打开浏览器
2. 在GitHub页面点击 [Authorize]（授权）
3. 返回命令行，继续执行

**或者使用Personal Access Token：**
1. 访问：https://github.com/settings/tokens
2. 点击 "Generate new token" → "Generate new token (classic)"
3. Note: 填写 "website-upload"
4. Expiration: 选择 "No expiration"
5. 勾选权限：`repo`（全选）
6. 点击底部绿色按钮 "Generate token"
7. 复制生成的token（只显示一次！）
8. 返回命令行，粘贴token作为密码

#### Mac/Linux用户：
会提示输入用户名和密码：
```
Username for 'https://github.com': 你的用户名
Password for 'https://你的用户名@github.com': 你的密码或token
```

### 10. 等待上传完成

你会看到：
```
Enumerating objects: 20, done.
Counting objects: 100% (20/20), done.
Delta compression using up to 8 threads
Compressing objects: 100% (18/18), done.
Writing objects: 100% (20/20), 50.23 KiB | 2.51 MiB/s, done.
Total 20 (delta 2), reused 0 (delta 0), pack-reused 0
To https://github.com/你的用户名/software-testing-website.git
 * [new branch]      main -> main
Branch 'main' set up to track remote branch 'main' from 'origin'.
```

**恭喜！代码已成功上传到GitHub！🎉**

---

## 第六步：启用GitHub Pages

### 1. 进入仓库设置

① 打开浏览器，访问你的仓库：
```
https://github.com/你的用户名/software-testing-website
```

② 页面顶部找到标签栏：
```
┌─────────────────────────────────────────────┐
│ < > Code  Issues  Pull requests  Settings  │
└─────────────────────────────────────────────┘
                                点击这里 ↑
```

### 2. 找到Pages设置

在设置页面，**左侧菜单向下滚动**，找到：
```
左侧菜单：
  Options
  Collaborators
  Webhooks
  ...
  Pages  ← 点击这里
  ...
```

### 3. 配置Pages

你会看到 "GitHub Pages" 配置页面

**① Build and deployment（构建和部署）**

找到 "Source" 下拉菜单：
```
Source
┌────────────────────────────┐
│ Deploy from a branch    ▼  │
└────────────────────────────┘
```

确保选择：**Deploy from a branch**

**② Branch（分支）**

```
Branch
┌────────┐  ┌────────┐
│ main ▼ │  │ /(root)│  [Save]
└────────┘  └────────┘
```

- 第一个下拉框选择：**main**
- 第二个下拉框选择：**/ (root)**
- 点击右边的 **[Save]** 按钮

### 4. 等待部署

点击Save后，页面顶部会显示：
```
┌──────────────────────────────────────────┐
│ ✓ GitHub Pages source saved.             │
└──────────────────────────────────────────┘
```

**刷新页面**（按F5或点击刷新按钮）

你会看到：
```
┌──────────────────────────────────────────────────────┐
│ Your site is live at                                 │
│ https://你的用户名.github.io/software-testing-website/│
└──────────────────────────────────────────────────────┘
```

**注意：** 首次部署可能需要1-5分钟时间，请耐心等待

---

## 第七步：访问你的网站！

### 你的网站地址是：

```
https://你的用户名.github.io/software-testing-website/
```

**完整示例：**
```
https://zhangsan-testing.github.io/software-testing-website/
```

### 测试访问

1. 复制你的网站地址
2. 在浏览器新标签页中打开
3. 如果看到你的网站首页，恭喜成功！🎉

### 如果显示404错误？

**不要慌！这很正常，尝试以下方法：**

① **等待几分钟**
   - 首次部署可能需要1-5分钟
   - 喝杯水，然后刷新页面

② **检查网址是否正确**
   - 确认用户名拼写正确
   - 确认仓库名称正确
   - 网址末尾要有斜杠 `/`

③ **回到GitHub检查Pages状态**
   - 进入仓库 → Settings → Pages
   - 看看是否显示 "Your site is live at..."
   - 如果显示错误信息，按提示操作

④ **检查仓库是否Public**
   - 进入仓库 → Settings
   - 如果看到 "Change visibility"
   - 确保仓库是 Public 的

---

## 第八步：如何更新网站内容

当你修改了网站内容，想要更新到GitHub Pages：

### 1. 修改文件

在本地修改你的HTML、CSS或JS文件

### 2. 打开命令行

进入网站目录：
```bash
cd D:\Cursor_working\software_testing_website
```

### 3. 查看修改

```bash
git status
```

会显示哪些文件被修改了

### 4. 添加修改的文件

**添加所有修改：**
```bash
git add .
```

**或者添加特定文件：**
```bash
git add index.html
git add css/style.css
```

### 5. 提交修改

```bash
git commit -m "更新网站内容"
```

你可以把 "更新网站内容" 改成具体的修改说明，例如：
- "添加新的教程页面"
- "修改首页样式"
- "更新联系方式"

### 6. 推送到GitHub

```bash
git push
```

### 7. 等待更新

- 推送成功后，等待1-2分钟
- GitHub Pages会自动重新部署
- 刷新你的网站页面查看更新

---

## 🎯 常用Git命令速查表

```bash
# 查看当前状态
git status

# 添加所有修改
git add .

# 提交修改
git commit -m "修改说明"

# 推送到GitHub
git push

# 查看提交历史
git log

# 查看远程仓库地址
git remote -v
```

---

## ❓ 常见问题解决

### Q1: 执行git命令时提示 "git不是内部或外部命令"

**解决方法：**
1. 确认Git已正确安装
2. 重启命令行窗口
3. 重启电脑
4. 重新安装Git

### Q2: git push时要求输入密码，但密码正确却提示错误

**原因：** GitHub已不支持密码登录

**解决方法：** 使用Personal Access Token
1. 访问：https://github.com/settings/tokens
2. 生成新token（参考第五步第9点）
3. 使用token代替密码

### Q3: 提示 "fatal: remote origin already exists"

**解决方法：**
```bash
git remote remove origin
git remote add origin https://github.com/你的用户名/software-testing-website.git
```

### Q4: 网站显示但样式不正常

**检查：**
1. CSS文件路径是否正确
2. 图片、图标等资源是否加载
3. 浏览器控制台是否有错误（F12打开）

### Q5: 想删除GitHub上的仓库重新开始

**步骤：**
1. 进入仓库页面
2. Settings（设置）
3. 拉到最底部
4. Danger Zone → Delete this repository
5. 按提示输入仓库名确认删除
6. 重新从第三步开始

---

## 🎉 恭喜你！

如果你完成了以上所有步骤，那么：

✅ 你的网站已经成功部署到GitHub Pages
✅ 全世界的人都可以通过网址访问你的网站
✅ 你学会了使用Git和GitHub
✅ 你可以随时更新网站内容

**现在你可以：**
1. 把网站地址分享给朋友
2. 把链接放在简历中
3. 继续添加更多内容
4. 申请自定义域名（可选）

---

## 📞 需要帮助？

如果遇到问题：

1. **仔细阅读错误信息**
   - 错误信息通常会告诉你问题所在

2. **搜索错误信息**
   - 复制错误信息到百度/Google搜索
   - 很可能别人也遇到过同样问题

3. **检查每一步**
   - 回到本指南，确认每个步骤都正确完成
   - 特别注意命令中的空格和符号

4. **尝试重新开始**
   - 删除本地的 `.git` 文件夹
   - 从第五步重新开始

**祝你部署成功！有问题随时查阅本指南！** 🚀







