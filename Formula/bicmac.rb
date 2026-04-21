class Bicmac < Formula
  desc "macOS menu bar utility: clipboard history, window snapping, app switching"
  homepage "https://github.com/supaicy/BicMac"
  url "https://github.com/supaicy/BicMac-releases/releases/download/v0.1.1/BicMac-0.1.1.tar.gz"
  sha256 "75f0562e6c22302777b31b1c3a1049ace69cf3deaa74d30544980f1aa9f42d56"
  license "MIT"

  depends_on :macos => :sonoma

  # SPM이 홈 디렉토리에 쓰려고 하므로 Homebrew 샌드박스 비활성화
  env :std

  def install
    ENV["SWIFTPM_CACHE_DIR"] = buildpath/".swiftpm-cache"

    system "swift", "build", "-c", "release", "--product", "BicMacApp"

    bin_path = `swift build -c release --show-bin-path`.strip
    app = buildpath/"BicMac.app"
    (app/"Contents/MacOS").mkpath
    (app/"Contents/Resources").mkpath

    cp "Sources/BicMacApp/Info.plist", app/"Contents/Info.plist"
    cp "#{bin_path}/BicMacApp", app/"Contents/MacOS/BicMac"
    chmod 0755, app/"Contents/MacOS/BicMac"

    system "codesign", "--force", "--deep", "--sign", "-",
           "--entitlements", "Sources/BicMacApp/BicMac.entitlements",
           "--options", "runtime", app.to_s
    system "xattr", "-dr", "com.apple.quarantine", app.to_s

    system "cp", "-R", app.to_s, "/Applications/BicMac.app"
    prefix.install app
  end

  def caveats
    <<~EOS
      첫 실행 시 다음 권한을 허용해야 합니다:
        - 손쉬운 사용 (시스템 설정 → 개인 정보 보호 → 손쉬운 사용)
        - 화면 기록 (시스템 설정 → 개인 정보 보호 → 화면 기록)

      제거 시 /Applications/BicMac.app은 수동으로 삭제하세요:
        sudo rm -rf /Applications/BicMac.app
    EOS
  end
end
