class Grind < Formula
  desc "Local-first task management CLI for humans and AI agents"
  homepage "https://github.com/H4ZM47/grind"
  license "MIT"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/H4ZM47/grind/releases/download/v1.0.0/grind_1.0.0_darwin_arm64.tar.gz"
    sha256 "dd56d1ea5e1d30a4d286c5dfcd2ca4df502f531b96e70278f01c86f14ed510b1"
  else
    url "https://github.com/H4ZM47/grind/releases/download/v1.0.0/grind_1.0.0_darwin_amd64.tar.gz"
    sha256 "9ac24118574be23a72bd86805caecbe906f58ce3e255f756ceea4a91d274a852"
  end

  def install
    bin.install "grind"
  end

  test do
    assert_match "version=", shell_output("#{bin}/grind version")
  end
end
