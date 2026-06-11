class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.13.2"
  url "https://github.com/terryso/axion/releases/download/v0.13.2/axion-0.13.2.tar.gz"
  sha256 "3ac670405b041f4c446783074d674f7ec8c096cc40fff82744c52a17d32cbbc5"

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
