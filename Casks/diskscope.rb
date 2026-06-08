cask "diskscope" do
  version "1.0.3"
  sha256 "66da0edd9b4a71a0dad0ac5776a5c26d9e3ed05b9cacd044c3127d26841fd15e"

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