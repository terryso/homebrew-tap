class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.5.1"
  url "https://github.com/terryso/axion/releases/download/v0.5.1/axion-0.5.1.tar.gz"
  sha256 "864fa27daed2ded2e6bad7fe0924f8a035692273d0add36c79b34653c8d5de92"

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
