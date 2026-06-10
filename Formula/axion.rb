class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.13.0"
  url "https://github.com/terryso/axion/releases/download/v0.13.0/axion-0.13.0.tar.gz"
  sha256 "c0974ad859cd4cba43815c95d6f73da5b2fa364549203204b3f499d2d794d0fe"

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
