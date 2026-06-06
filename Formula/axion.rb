class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.11.0"
  url "https://github.com/terryso/axion/releases/download/v0.11.0/axion-0.11.0.tar.gz"
  sha256 "520b71a9a32749d540c898f5c8768e136ac374c7407d010abdfda5f3a44c7011"

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
