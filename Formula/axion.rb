class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.6.0"
  url "https://github.com/terryso/axion/releases/download/v0.6.0/axion-0.6.0.tar.gz"
  sha256 "b757917af55cc7b9884c2867225334401bf8652c3d44c2f59ad7b9caf34bad02"

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
