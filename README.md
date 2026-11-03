# Proxyman's Homebrew tap

```bash
brew install --cask proxymanapp/tap/device-mcp
```

| Cask | App |
| --- | --- |
| `device-mcp` | [Device MCP](https://devicemcp.ai): see and control your iPhone or iPad from your Mac, with an MCP server for coding agents. macOS 26 or later. |

Installing a cask by its full name, as above, also trusts that cask, which Homebrew 6 and later require for
non-official taps ([Tap Trust](https://docs.brew.sh/Tap-Trust)). The app goes into `/Applications` and links its
`device-mcp` command into Homebrew's `bin`.

Device MCP updates itself (Sparkle). Each release also updates this cask, so `brew upgrade --cask --greedy device-mcp`
finds it too.
