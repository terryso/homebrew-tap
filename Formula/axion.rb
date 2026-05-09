class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.1.0"
  url "https://github.com/terryso/axion/releases/download/v0.1.0/axion-0.1.0.tar.gz"
  sha256 "449fc0e3ad83cd5dcef33ac4c557a35be3dd6cae254f16d1e600220c56888586"

  depends_on :macos => :sonoma

  def install
    bin.install "bin/axion"
    libexec.install Dir["libexec/*"]
  end

  def caveats
    <<~EOS
      Run `axion setup` to configure your API key and permissions.
      Run `axion doctor` to verify your environment.
    EOS
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/axion --version"))
  end
end
