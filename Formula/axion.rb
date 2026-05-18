class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.5.3"
  url "https://github.com/terryso/axion/releases/download/v0.5.3/axion-0.5.3.tar.gz"
  sha256 "9a209f4fc965a15d4ff1f21d4fd48b7a973f9597b91cc225fb615d3ad115395b"

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
