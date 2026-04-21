class Grind < Formula
  desc "Local-first task management CLI for humans and AI agents"
  homepage "https://github.com/H4ZM47/grind"
  license "MIT"
  version "1.0.1"

  if Hardware::CPU.arm?
    url "https://github.com/H4ZM47/grind/releases/download/v1.0.1/grind_1.0.1_darwin_arm64.tar.gz"
    sha256 "6619ab82a6cc1af8c0984e2aace8969595a42c5dab70638c87a160ea23f77d08"
  else
    url "https://github.com/H4ZM47/grind/releases/download/v1.0.1/grind_1.0.1_darwin_amd64.tar.gz"
    sha256 "bcd483d0b0ad3bee5a54d5bb66cc19d85717067e8845bf02620f5a484ba06a11"
  end

  def install
    bin.install "grind"
  end

  test do
    assert_match "version=", shell_output("#{bin}/grind version")
  end
end
