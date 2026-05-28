class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.9.1"
  url "https://github.com/terryso/axion/releases/download/v0.9.1/axion-0.9.1.tar.gz"
  sha256 "c1335e2ac9b18b8dba45e061f073b38b52124a4606172117f40a85efcec1ac99"

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
