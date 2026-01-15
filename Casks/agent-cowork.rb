cask "agent-cowork" do
  version "0.0.2"

  url "https://github.com/DevAgentForge/Claude-Cowork/releases/download/apple-silicon/Agent.Cowork-#{version}-arm64.dmg"
  sha256 "710531f42d77882e0b2c221f75bb26d34c41071053ed1073089bc4995fe96b5e"
  name "Agent Cowork"
  desc "OpenSource Claude Cowork - A desktop AI assistant that helps you with programming, file management, and any task you can describe"
  homepage "https://github.com/DevAgentForge/Claude-Cowork"

  app "Agent Cowork.app"

  zap trash: [
    "~/Library/Application Support/Agent Cowork",
  ]
end
