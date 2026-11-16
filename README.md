# sumihiro3/homebrew-tap

Homebrew tap for [Kakiire](https://kakiire.tep-lab.com/), a screenshot annotation app for macOS (Apple Silicon, macOS 15+).

```bash
brew install --cask sumihiro3/tap/kakiire   # app
brew install sumihiro3/tap/kakiire          # CLI and MCP server
```

Register the CLI with Claude Code as an MCP server:

```bash
claude mcp add kakiire -- "$(brew --prefix)/bin/kakiire" mcp
```
