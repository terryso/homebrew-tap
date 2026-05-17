class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.3.0"
  url "https://github.com/terryso/axion/releases/download/v0.3.0/axion-0.3.0.tar.gz"
  sha256 "7525a8edc0a90eaec49efa501b38d47037106f9cc061450078896dbe29aaaaff"

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
