class Kakiire < Formula
  desc "Annotate screenshots from the command line or as an MCP server"
  homepage "https://kakiire.tep-lab.com/"
  url "https://github.com/sumihiro3/kakiire/releases/download/v0.11.0/kakiire-0.11.0-macos-arm64.zip"
  sha256 "5c8f8108a06aaa03e6df9aaacea94c914021365d0efbc2bdf466f339885985df"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "kakiire"
  end

  def caveats
    <<~EOS
      To use Kakiire as an MCP server in Claude Code:
        claude mcp add kakiire -- #{opt_bin}/kakiire mcp
    EOS
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/kakiire --version").strip
  end
end
