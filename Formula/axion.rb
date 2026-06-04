class Axion < Formula
  desc "macOS desktop automation CLI powered by AI"
  homepage "https://github.com/terryso/axion"
  version "0.10.2"
  url "https://github.com/terryso/axion/releases/download/v0.10.2/axion-0.10.2.tar.gz"
  sha256 "7671870204d78fc745e1fe4d4a9e695270c310f3353a93005e9bfc9a3015b93f"

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
