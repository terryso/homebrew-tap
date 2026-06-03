class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.10.1"
  url "https://github.com/terryso/axion/releases/download/v0.10.1/axion-0.10.1.tar.gz"
  sha256 "9282dd23caf5508608babfefb4368082c9fe8b0a28c95641b2f585d70af47d37"

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
