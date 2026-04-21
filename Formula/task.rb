class Task < Formula
  desc "Local-first task management CLI for humans and AI agents"
  homepage "https://github.com/H4ZM47/task-cli"
  license "MIT"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/H4ZM47/task-cli/releases/download/v1.0.0/task_1.0.0_darwin_arm64.tar.gz"
    sha256 "87e645e2e711d6e3cb028a7868ef9bffa9807a1177f4248e0aa9aee6bc7149cb"
  else
    url "https://github.com/H4ZM47/task-cli/releases/download/v1.0.0/task_1.0.0_darwin_amd64.tar.gz"
    sha256 "cc69075811e01bd106661d282262e84d2d778b1a94afda39550172fe81b95763"
  end

  def install
    bin.install "task"
  end

  test do
    assert_match "version=", shell_output("#{bin}/task version")
  end
end
