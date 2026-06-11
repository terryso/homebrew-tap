class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.13.2"
  url "https://github.com/terryso/axion/releases/download/v0.13.2/axion-0.13.2.tar.gz"
  sha256 "1e6152288845ff17c82d2c94d9da2e1b32055baa9b630d6f92820b201b58182d"

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
