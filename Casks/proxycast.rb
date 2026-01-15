cask "proxycast" do
  version "0.37.0"

  if Hardware::CPU.arm?
    url "https://github.com/aiclientproxy/proxycast/releases/download/v#{version}/proxycast_#{version}_aarch64.dmg"
    sha256 :no_check
  else
    url "https://github.com/aiclientproxy/proxycast/releases/download/v#{version}/proxycast_#{version}_x64.dmg"
    sha256 :no_check
  end

  name "ProxyCast"
  desc "AI API 代理桌面应用 - 将 AI 客户端凭证转换为 OpenAI 兼容接口"
  homepage "https://github.com/aiclientproxy/proxycast"

  app "ProxyCast.app"

  zap trash: [
    "~/.config/com.proxycast.app",
    "~/Library/Application Support/com.proxycast.app",
  ]
end
