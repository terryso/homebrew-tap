class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.3.0"
  url "https://github.com/terryso/axion/releases/download/v0.3.0/axion-0.3.0.tar.gz"
  sha256 "6c2deba1756b8950e32816e0b0e42afb6d79542f9c40d7fb75ed07b7505b6e8a"

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
