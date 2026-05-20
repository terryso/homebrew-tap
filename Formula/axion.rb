class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.5.5"
  url "https://github.com/terryso/axion/releases/download/v0.5.5/axion-0.5.5.tar.gz"
  sha256 "e0834e33e2e8d7d9ec912040a6baca64cd68319b4e41ecd00ddc77e322eb44eb"

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
