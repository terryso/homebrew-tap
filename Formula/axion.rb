class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.10.0"
  url "https://github.com/terryso/axion/releases/download/v0.10.0/axion-0.10.0.tar.gz"
  sha256 "362e4c0ac118aa83e6782b485bc45c031a3ea40f49829c8d013af0ec954f50e9"

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
