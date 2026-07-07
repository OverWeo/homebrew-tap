class Weoline < Formula
  desc "Fast, cross-platform terminal statusline for Claude Code"
  homepage "https://github.com/OverWeo/weoline"
  version "0.4.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/OverWeo/weoline/releases/download/v0.4.3/weoline-aarch64-apple-darwin.tar.gz"
      sha256 "62afddf9662dc7b73dd272f7a1cd03f9afda7c98585e0b89461fcd633d2bd4db"
    end

    on_intel do
      url "https://github.com/OverWeo/weoline/releases/download/v0.4.3/weoline-x86_64-apple-darwin.tar.gz"
      sha256 "ae6104bfdf2a3862e180569ab1e6e54bd8bcaf10de3549bf66d3666c2b06b7f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OverWeo/weoline/releases/download/v0.4.3/weoline-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "87e25021570bfb59c546ba70133fcfad4fbeebde442c82fd09f4340e354f5239"
    end

    on_intel do
      url "https://github.com/OverWeo/weoline/releases/download/v0.4.3/weoline-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "548415ccde18dab2170d31a8f5e098856e8ad495510da36fa55a6ce88b91f4d8"
    end
  end

  def install
    bin.install "weoline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/weoline --version")
  end
end
