cask "diskscope" do
  version "1.0.1"
  sha256 "f188e7868234619423924ec3cdb80c5479bd95f8469ea710ca20d28de1064f84"

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
