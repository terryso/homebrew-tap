class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.5.0"
  url "https://github.com/terryso/axion/releases/download/v0.5.0/axion-0.5.0.tar.gz"
  sha256 "f8988924c0b0eaf7f1367bf6786f7a76c28c78e61dee6de65adf17167d456924"

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
