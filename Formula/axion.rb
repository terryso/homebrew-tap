class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.4.1"
  url "https://github.com/terryso/axion/releases/download/v0.4.1/axion-0.4.1.tar.gz"
  sha256 "bf76764dfae6efded32bb0e5a2f5c0293e5fbba84eccd96460330c2e3c063ca6"

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
