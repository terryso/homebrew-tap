class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.1.0"
  url "https://github.com/terryso/homebrew-tap/releases/download/v0.1.0/axion-0.1.0.tar.gz"
  sha256 "9a767472b3de1ad408f9b2b2fd23a4503c39b272e0bcba3933771c326a33fb27"

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
