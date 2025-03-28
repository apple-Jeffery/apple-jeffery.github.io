<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🔥 Jeffery's Hub</title>
    <script src="https://cdn.jsdelivr.net/npm/particles.js"></script>
    <style>
        :root {
            --bg-color: #f0f2f5;
            --text-color: #222;
            --card-bg: rgba(255, 255, 255, 0.85);
            --button-bg: rgba(0, 122, 255, 0.9);
            --button-hover: linear-gradient(45deg, #6fb1fc, #4364f7);
        }
        body.dark-mode {
            --bg-color: #1c1c1e;
            --text-color: #f5f5f7;
            --card-bg: rgba(44, 44, 46, 0.85);
        }
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
            font-size: 32px;
            margin-top: 40px;
            color: #ff6b81;
            text-shadow: 2px 2px 6px rgba(0,0,0,0.1);
        }
        .container {
            max-width: 820px;
            margin: 50px auto;
            padding: 30px;
            background: var(--card-bg);
            border-radius: 20px;
            backdrop-filter: blur(14px);
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.15);
        }
        .button {
            display: inline-block;
            margin: 12px 10px;
            padding: 14px 26px;
            background: var(--button-bg);
            color: white;
            text-decoration: none;
            font-size: 18px;
            font-weight: 500;
            border-radius: 10px;
            transition: 0.3s;
            background-size: 200%;
        }
        .button:hover {
            background: var(--button-hover);
            transform: scale(1.06);
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
        }
        .toggle-button {
            position: fixed;
            top: 20px;
            right: 20px;
            padding: 10px;
            background: var(--button-bg);
            color: white;
            border-radius: 8px;
            cursor: pointer;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
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
        }
        .wechat-modal img {
            width: 200px;
            height: 200px;
            border-radius: 10px;
        }
        .close-btn {
            margin-top: 12px;
            background: #e74c3c;
            color: white;
            border: none;
            padding: 10px 16px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
        }
        footer {
            margin: 40px 0;
            color: #999;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div id="particles-js"></div>
    <header>🔥 Jeffery's Hub</header>
    <button class="toggle-button" onclick="toggleDarkMode()">🌙</button>

    <div class="container">
        <h1 id="greeting">Welcome to Jeffery's World</h1>
        <p>🌟 今日推荐: <span id="daily-quote"></span></p>

        <p><a class="button" href="https://apple-jeffery.github.io/music-corner/" target="_blank">🎵 我的音乐角落</a></p>
        <p><a class="button" href="about.html">🧑‍🎓 了解 Jeffery</a></p>
        <p><a class="button" href="blog.html">🚀 发现我的想法</a></p>
        <p><a class="button" href="articles.md">🌿 值得一读的文章</a></p>
        <p><a class="button" href="https://apple-jeffery.github.io/emotion-tree/" target="_blank">🌙 Jeffery 的情绪树洞</a></p>
        <p><a class="button" href="https://apple-jeffery.github.io/photo-gallery/" target="_blank">🖼️ Jeffery 的图图角落</a></p>
        <p><button class="button" onclick="showWeChatQR()">💬 加我微信好友</button></p>
    </div>

    <div class="wechat-modal" id="wechat-modal">
        <h2>📱 扫码加我微信</h2>
        <img src="wechat_qr.jpg" alt="微信二维码">
        <p>📌 长按识别二维码</p>
        <button class="close-btn" onclick="closeWeChatQR()">关闭</button>
    </div>

    <footer>© 2025 Jeffery. All Rights Reserved.</footer>

    <script>
        particlesJS.load('particles-js', 'particles.json', function() {});

        function toggleDarkMode() {
            document.body.classList.toggle("dark-mode");
            localStorage.setItem("dark-mode", document.body.classList.contains("dark-mode") ? "enabled" : "disabled");
        }

        document.getElementById("daily-quote").textContent = ["保持热爱", "探索世界", "享受生活"][Math.floor(Math.random() * 3)];

        function showWeChatQR() {
            document.getElementById("wechat-modal").style.display = "block";
        }

        function closeWeChatQR() {
            document.getElementById("wechat-modal").style.display = "none";
        }
    </script>
</body>
</html>
