cask "bicmac" do
  version "0.1.3"
  sha256 "6ff534913d056db2a4ee46e403ecc822629dbb67e6b73e4d6fb0d15965e95bf2"

  url "https://github.com/supaicy/BicMac-releases/releases/download/v#{version}/BicMac-#{version}.app.zip"
  name "BicMac"
  desc "macOS menu bar utility: clipboard history, window snapping, app switching"
  homepage "https://github.com/supaicy/BicMac"

  app "BicMac.app"

  zap trash: "~/Library/Application Support/BicMac"
end
