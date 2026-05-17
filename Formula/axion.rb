class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.4.0"
  url "https://github.com/terryso/axion/releases/download/v0.4.0/axion-0.4.0.tar.gz"
  sha256 "5307c6d7cce457d2dfdcbc9945d6264994f566c5611080ea3fa054348376eb50"

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
