class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.5.2"
  url "https://github.com/terryso/axion/releases/download/v0.5.2/axion-0.5.2.tar.gz"
  sha256 "9be1eccd3d09a82b5f48b4313644a11dc98263b0bb24aeb5c735d7663889cc4e"

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
