class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.12.0"
  url "https://github.com/terryso/axion/releases/download/v0.12.0/axion-0.12.0.tar.gz"
  sha256 "62b60396298542c66401b5568fd5b48c8c1f3e9d8f6e0fe7b2a748ddbca429dc"

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
