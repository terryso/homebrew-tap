class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.7.0"
  url "https://github.com/terryso/axion/releases/download/v0.7.0/axion-0.7.0.tar.gz"
  sha256 "2a8d50a70cf8d0877e19e1e86d9550561f4245a50be84ccf34aaa6ce2b260ae7"

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
