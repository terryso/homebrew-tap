class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.13.4"
  url "https://github.com/terryso/axion/releases/download/v0.13.4/axion-0.13.4.tar.gz"
  sha256 "5dcc99538bec9f50e7c61c7fd665d77fafcb9d62476b42f97b349f09cabb645d"

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
