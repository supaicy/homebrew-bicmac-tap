cask "bicmac" do
  version "0.1.4"
  sha256 "4bc3acc3e994a9600802cdd86b9cd20bc7d9142f44370c141ba02721a1b90bce"

  url "https://github.com/supaicy/BicMac-releases/releases/download/v#{version}/BicMac-#{version}.app.zip"
  name "BicMac"
  desc "macOS menu bar utility: clipboard history, window snapping, app switching"
  homepage "https://github.com/supaicy/BicMac"

  app "BicMac.app"

  zap trash: "~/Library/Application Support/BicMac"
end
