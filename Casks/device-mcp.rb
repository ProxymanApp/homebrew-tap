cask "device-mcp" do
  version "0.9.0,90"
  sha256 "ec26c8143741a43ea0fad0374657c82f1366be0acb68977cdb03cb5fc88f446c"

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
