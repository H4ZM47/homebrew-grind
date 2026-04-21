class Grind < Formula
  desc "Local-first task management CLI for humans and AI agents"
  homepage "https://github.com/H4ZM47/grind"
  license "MIT"
  version "1.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/H4ZM47/grind/releases/download/v1.1.0/grind_1.1.0_darwin_arm64.tar.gz"
    sha256 "d8fd68f713d57489cb51b66266309ecb95ee79798baf030bfc3959155e9597a6"
  else
    url "https://github.com/H4ZM47/grind/releases/download/v1.1.0/grind_1.1.0_darwin_amd64.tar.gz"
    sha256 "e4b0414e041da3f4547c3299914e188aacb1276461dc9fcd2f5f6977413e1686"
  end

  def install
    bin.install "grind"
  end

  test do
    assert_match "version=", shell_output("#{bin}/grind --version")
  end
end
