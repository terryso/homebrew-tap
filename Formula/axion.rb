class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.5.4"
  url "https://github.com/terryso/axion/releases/download/v0.5.4/axion-0.5.4.tar.gz"
  sha256 "47a57a272a11434f37de994b95f9f9f381f2bc7181bf96540de3f0373ac66c67"

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
