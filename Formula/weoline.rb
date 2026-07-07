class Weoline < Formula
  desc "Fast, cross-platform terminal statusline for Claude Code"
  homepage "https://github.com/OverWeo/weoline"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/OverWeo/weoline/releases/download/v0.4.2/weoline-aarch64-apple-darwin.tar.gz"
      sha256 "95340973bc79e4b1d956b9ec580416d62a0c68e90e1e20aefd51eecda03eb4f8"
    end

    on_intel do
      url "https://github.com/OverWeo/weoline/releases/download/v0.4.2/weoline-x86_64-apple-darwin.tar.gz"
      sha256 "497770558da73950ebab8f73600a665d064e35c6e7ff055c6e912680ec32c8d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OverWeo/weoline/releases/download/v0.4.2/weoline-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cdb223bdb71f6614dc259f52f587e6b8ae8afc651c795d70ff82d04f8a8d42e0"
    end

    on_intel do
      url "https://github.com/OverWeo/weoline/releases/download/v0.4.2/weoline-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d486f4c147a9560fef22eb8a89ab702a1c44de52671b3f5e98aeb382ba3879d"
    end
  end

  def install
    bin.install "weoline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/weoline --version")
  end
end
