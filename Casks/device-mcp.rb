cask "device-mcp" do
  version "1.4.0,10400"
  sha256 "700c23b31a77b7fb408a4ee2874fb04b270a2184d8b13ff1003f90913274ad10"

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
