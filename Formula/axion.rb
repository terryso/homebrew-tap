class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.12.1"
  url "https://github.com/terryso/axion/releases/download/v0.12.1/axion-0.12.1.tar.gz"
  sha256 "9c28f3aac4e2374624df47f61e4e9dbcfd7145e20a629d479da3d13e8a887f3c"

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
