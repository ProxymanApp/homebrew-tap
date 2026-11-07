cask "device-mcp" do
  version "0.8.0,80"
  sha256 "0ccf0cbbed07167a50b3afef0d19e65ac6cc7b02fb781550d4c62fbd765cc89b"

  url "https://assets.proxyman.com/devicemcp/production/#{version.csv.first}/#{version.csv.second}/DeviceMCP_#{version.csv.first}_#{version.csv.second}.dmg"
  name "Device MCP"
  desc "Mirror and control iPhones and iPads, with an MCP server for coding agents"
  homepage "https://devicemcp.ai/"

  livecheck do
    url "https://devicemcp.ai/api/releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Device MCP.app"
  binary "#{appdir}/Device MCP.app/Contents/MacOS/device-mcp"

  zap trash: [
    "~/Library/Application Support/com.proxyman.devicemcp",
    "~/Library/Application Support/DeviceMCP",
    "~/Library/Caches/com.proxyman.devicemcp",
    "~/Library/Caches/DeviceMCP",
    "~/Library/HTTPStorages/com.proxyman.devicemcp",
    "~/Library/HTTPStorages/com.proxyman.devicemcp.binarycookies",
    "~/Library/Preferences/com.proxyman.devicemcp.plist",
    "~/Library/Saved Application State/com.proxyman.devicemcp.savedState",
  ]
end
