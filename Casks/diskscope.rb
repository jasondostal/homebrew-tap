cask "diskscope" do
  version "1.2.0"
  sha256 "fab147294138a6bdc79198692d3f5f82e558185d399898dd0fb844ff14af992b"

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