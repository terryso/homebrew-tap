class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.9.0"
  url "https://github.com/terryso/axion/releases/download/v0.9.0/axion-0.9.0.tar.gz"
  sha256 "fd72368c9ba9fa207186acd3b72e7cc69d4e2cb2dd3c70cf042e898fd9b1690b"

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
