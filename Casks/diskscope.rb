cask "diskscope" do
  version "1.1.0"
  sha256 "668247a2056654b2937145a88bb19dfc97548b463a15bf671a70a6f70536b0c1"

  url "https://github.com/jasondostal/diskscope/releases/download/v#{version}/DiskScope-#{version}.dmg"
  name "DiskScope"
  desc "Native macOS WinDirStat — fast disk-usage treemap"
  homepage "https://github.com/jasondostal/diskscope"

  depends_on macos: ">= :sonoma"

  app "DiskScope.app"
  # The CLI/TUI bundled inside the app, exposed on PATH as `diskscope`.
  binary "#{appdir}/DiskScope.app/Contents/MacOS/diskscope-scan", target: "diskscope"

  zap trash: [
    "~/Library/Preferences/com.witekdivers.DiskScope.plist",
    "~/Library/Saved Application State/com.witekdivers.DiskScope.savedState",
  ]
end