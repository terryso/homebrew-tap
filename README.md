# terryso/homebrew-tap

Homebrew Tap for macOS desktop applications.

## 安装

```bash
brew tap terryso/tap
```

### Axion

macOS desktop automation CLI powered by AI.

```bash
brew install axion
```

- **项目地址**: https://github.com/terryso/axion

### Agent Cowork

```bash
brew install --cask agent-cowork
```

### ProxyCast

AI API 代理桌面应用，支持将 AI 客户端凭证转换为 OpenAI 兼容接口。

```bash
brew install --cask proxycast
```

- **项目地址**: https://github.com/aiclientproxy/proxycast
- **默认端口**: 8999
- **配置目录**: `~/.config/com.proxycast.app/`

## 常用命令

```bash
# 更新
brew upgrade <formula-or-cask>

# 卸载
brew uninstall <formula-or-cask>

# 移除 tap
brew untap terryso/tap
```
