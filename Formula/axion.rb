class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.5.6"
  url "https://github.com/terryso/axion/releases/download/v0.5.6/axion-0.5.6.tar.gz"
  sha256 "01c20b784b398e4481b6c26c25243bf53912c04c0be2cbfa5869c015cdedfc93"

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
