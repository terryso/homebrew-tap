class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.13.1"
  url "https://github.com/terryso/axion/releases/download/v0.13.1/axion-0.13.1.tar.gz"
  sha256 "cb79eb059013f843eb6925b800935b407c88412b26d9038b2350bd39d009a908"

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
