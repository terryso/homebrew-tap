class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.13.3"
  url "https://github.com/terryso/axion/releases/download/v0.13.3/axion-0.13.3.tar.gz"
  sha256 "45ed44f4c67982c78bca557e8919cbc96a2a080def66a8716e29a8ead5b984ab"

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
