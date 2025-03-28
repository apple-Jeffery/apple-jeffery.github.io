<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>🔥 Jeffery's Hub</title>
  <script src="https://cdn.jsdelivr.net/npm/particles.js"></script>
  <style>
    /* ========================
       1. 全局CSS变量
    ========================= */
    :root {
      /* 浅色模式下的颜色设置 */
      --bg-color: #f0f2f5;  /* body可能会用到 */
      --text-color: #222;
      /* 半透明白色，让背景更多透出 */
      --card-bg: rgba(255, 255, 255, 0.5);
      /* 浅一些的蓝色按钮背景 */
      --button-bg: rgba(0, 122, 255, 0.7);
      /* 按钮悬停时的渐变(也可根据需要再调浅一些) */
      --button-hover: linear-gradient(45deg, rgba(111,177,252,0.8), rgba(67,100,247,0.8));
      /* 标题颜色改为略微柔和的浅色 */
      --header-color: #fdfdfd;
    }

    /* 暗色模式下的颜色设置 */
    body.dark-mode {
      --bg-color: #1c1c1e;
      --text-color: #f5f5f7;
      /* 依然保持一定透明度，让暗背景也能隐约看到后面的图 */
      --card-bg: rgba(44, 44, 46, 0.75);
      /* 暗色模式下按钮可以再暗一点 */
      --button-bg: rgba(100, 100, 255, 0.7);
      --button-hover: linear-gradient(45deg, rgba(111,177,252,0.3), rgba(67,100,247,0.6));
      /* 让标题在暗色模式下也能看得清 */
      --header-color: #ffffff;
    }

    /* ========================
       2. 全局基础样式
    ========================= */
    body {
      font-family: 'Segoe UI', sans-serif;
      margin: 0;
      padding: 0;
      background: url('main-background.jpg') no-repeat center center fixed;
      background-size: cover;
      color: var(--text-color);
      transition: background 0.3s ease-in-out, color 0.3s ease-in-out;
    }

    header {
      /* 用CSS变量来控制标题颜色 */
      color: var(--header-color);
      font-size: 32px;
      margin-top: 40px;
      text-shadow: 2px 2px 6px rgba(0,0,0,0.3);
      text-align: center;
    }

    /* ========================
       3. 容器样式
    ========================= */
    .container {
      max-width: 820px;
      margin: 50px auto;
      padding: 30px;
      background: var(--card-bg); /* 半透明白色 */
      border-radius: 20px;
      backdrop-filter: blur(16px);
      box-shadow: 0 12px 40px rgba(0, 0, 0, 0.15);
      text-align: center;
    }

    /* ========================
       4. 按钮样式
    ========================= */
    .button {
      display: block;
      margin: 16px auto;
      padding: 14px 26px;
      background: var(--button-bg);
      color: #fff;
      text-decoration: none;
      font-size: 18px;
      font-weight: 500;
      border-radius: 10px;
      transition: all 0.3s ease;
      width: 260px;
      background-size: 200%;
    }
    .button:hover {
      /* 改为稍微的放大，去掉“眨眼”感 */
      transform: scale(1.03);
      box-shadow: 0 6px 14px rgba(0, 0, 0, 0.2);
      background: var(--button-hover);
    }

    /* ========================
       5. 暗色模式切换按钮
    ========================= */
    .toggle-button {
      position: fixed;
      top: 20px;
      right: 20px;
      padding: 10px;
      background: var(--button-bg);
      color: #fff;
      border-radius: 8px;
      cursor: pointer;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      transition: all 0.3s ease;
    }
    .toggle-button:hover {
      background: var(--button-hover);
      transform: scale(1.03);
    }

    /* ========================
       6. 微信二维码弹窗
    ========================= */
    .wechat-modal {
      display: none;
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      background: rgba(255, 255, 255, 0.95);
      padding: 24px;
      border-radius: 14px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25);
      text-align: center;
      z-index: 999; /* 保证弹窗在最上方 */
    }
    .wechat-modal img {
      width: 200px;
      height: 200px;
      border-radius: 10px;
    }
    .close-btn {
      margin-top: 12px;
      background: #e74c3c;
      color: #fff;
      border: none;
      padding: 10px 16px;
      border-radius: 8px;
      cursor: pointer;
      font-weight: bold;
      transition: background 0.3s ease;
    }
    .close-btn:hover {
      background: #c0392b;
    }

    /* ========================
       7. 页脚样式
    ========================= */
    footer {
      margin: 40px 0;
      color: #ccc;
      font-size: 14px;
      text-align: center;
    }

  </style>
</head>
<body>
  <!-- 粒子背景 -->
  <div id="particles-js"></div>

  <!-- 标题 -->
  <header>🔥 Jeffery's Hub</header>
  
  <!-- 暗色模式切换按钮 -->
  <button class="toggle-button" onclick="toggleDarkMode()">🌙</button>

  <!-- 容器 -->
  <div class="container">
    <h1 id="greeting">Welcome to Jeffery's World</h1>
    <p>🌟 今日推荐: <span id="daily-quote"></span></p>

    <!-- 功能按钮，保持原有链接和顺序不变 -->
    <a class="button" href="https://apple-jeffery.github.io/music-corner/" target="_blank">🎵 我的音乐角落</a>
    <a class="button" href="about.html">🧑‍🎓 了解 Jeffery</a>
    <a class="button" href="blog.html">🚀 发现我的想法</a>
    <a class="button" href="articles.md">🌿 值得一读的文章</a>
    <a class="button" href="https://apple-jeffery.github.io/emotion-tree/" target="_blank">🌙 Jeffery 的情绪树洞</a>
    <a class="button" href="https://apple-jeffery.github.io/photo-gallery/" target="_blank">🖼️ Jeffery 的图图角落</a>
    <button class="button" onclick="showWeChatQR()">💬 加我微信好友</button>
  </div>

  <!-- 微信二维码弹窗 -->
  <div class="wechat-modal" id="wechat-modal">
    <h2>📱 扫码加我微信</h2>
    <img src="wechat_qr.jpg" alt="微信二维码">
    <p>📌 长按识别二维码</p>
    <button class="close-btn" onclick="closeWeChatQR()">关闭</button>
  </div>

  <!-- 页脚 -->
  <footer>© 2025 Jeffery. All Rights Reserved.</footer>

  <!-- 脚本 -->
  <script>
    // 加载粒子背景
    particlesJS.load('particles-js', 'particles.json', function() {});

    // 暗色模式切换
    function toggleDarkMode() {
      document.body.classList.toggle("dark-mode");
      localStorage.setItem(
        "dark-mode",
        document.body.classList.contains("dark-mode") ? "enabled" : "disabled"
      );
    }

    // 随机每日推荐
    document.getElementById("daily-quote").textContent = ["保持热爱", "探索世界", "享受生活"][Math.floor(Math.random() * 3)];

    // 显示微信二维码
    function showWeChatQR() {
      document.getElementById("wechat-modal").style.display = "block";
    }

    // 关闭微信二维码
    function closeWeChatQR() {
      document.getElementById("wechat-modal").style.display = "none";
    }
  </script>
</body>
</html>
