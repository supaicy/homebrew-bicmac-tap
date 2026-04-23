cask "bicmac" do
  version "0.1.2"
  sha256 "119b3c9aa90d8570e420eb70ece733e4477174e3fcf1d9f94e667fc70a83eaca"

  url "https://github.com/supaicy/BicMac-releases/releases/download/v#{version}/BicMac-#{version}.app.zip"
  name "BicMac"
  desc "macOS menu bar utility: clipboard history, window snapping, app switching"
  homepage "https://github.com/supaicy/BicMac"

  app "BicMac.app"

  zap trash: "~/Library/Application Support/BicMac"
end
