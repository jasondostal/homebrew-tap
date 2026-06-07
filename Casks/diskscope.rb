cask "diskscope" do
  version "1.0.2"
  sha256 "5f526d7b26535a3695a777cb82a3c13aef7df876836b680b90991355df4999d7"

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
