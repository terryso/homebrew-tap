class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.6.1"
  url "https://github.com/terryso/axion/releases/download/v0.6.1/axion-0.6.1.tar.gz"
  sha256 "004e51cefdcb01382afa9a7bff8ff19687acf508afe7b0179394091066b4ff2b"

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
