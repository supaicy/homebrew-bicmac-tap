cask "bicmac" do
  version "0.1.1"
  sha256 "PLACEHOLDER"

  url "https://github.com/supaicy/BicMac-releases/releases/download/v#{version}/BicMac-#{version}.app.zip"
  name "BicMac"
  desc "macOS menu bar utility: clipboard history, window snapping, app switching"
  homepage "https://github.com/supaicy/BicMac"

  app "BicMac.app"

  zap trash: "~/Library/Application Support/BicMac"
end
