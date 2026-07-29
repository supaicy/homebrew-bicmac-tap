cask "bicmac" do
  version "0.1.5"
  sha256 "6ca67a7a19f5b16f0e9e16238ed5fc2cb6c80f72070ca1d2cd5659aaade4ef12"

  url "https://github.com/supaicy/BicMac-releases/releases/download/v#{version}/BicMac-#{version}.app.zip"
  name "BicMac"
  desc "Menu bar utility for clipboard history, window snapping, and app switching"
  homepage "https://github.com/supaicy/BicMac"

  depends_on macos: :sonoma

  app "BicMac.app"

  # Two bundle identifiers: BicMac shipped as com.bicmac.app before renaming to
  # com.supaicy.bicmac, and an uninstall has to clear both or it leaves the older
  # install's preferences and caches behind. The app carries settings across the
  # rename itself on first launch, so this only matters on uninstall.
  zap trash: [
    "~/Library/Application Support/BicMac",
    "~/Library/Caches/com.bicmac.app",
    "~/Library/Caches/com.supaicy.bicmac",
    "~/Library/HTTPStorages/com.bicmac.app",
    "~/Library/HTTPStorages/com.supaicy.bicmac",
    "~/Library/Preferences/com.bicmac.app.plist",
    "~/Library/Preferences/com.supaicy.bicmac.plist",
    "~/Library/Saved Application State/com.bicmac.app.savedState",
    "~/Library/Saved Application State/com.supaicy.bicmac.savedState",
  ]
end
