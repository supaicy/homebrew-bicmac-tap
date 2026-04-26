cask "bicmac" do
  version "0.1.5"
  sha256 "6ca67a7a19f5b16f0e9e16238ed5fc2cb6c80f72070ca1d2cd5659aaade4ef12"

  url "https://github.com/supaicy/BicMac-releases/releases/download/v#{version}/BicMac-#{version}.app.zip"
  name "BicMac"
  desc "macOS menu bar utility: clipboard history, window snapping, app switching"
  homepage "https://github.com/supaicy/BicMac"

  app "BicMac.app"

  zap trash: "~/Library/Application Support/BicMac"
end
