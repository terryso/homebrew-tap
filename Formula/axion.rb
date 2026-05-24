class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.8.0"
  url "https://github.com/terryso/axion/releases/download/v0.8.0/axion-0.8.0.tar.gz"
  sha256 "ec845cda5ba81a0a956913e1a4986ec37b5372fe2da5328849daf786cdb02138"

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
