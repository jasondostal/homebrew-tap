class DiskscopeCli < Formula
  desc "DiskScope terminal UI - disk-usage treemap + instant search in your terminal"
  homepage "https://github.com/jasondostal/diskscope"
  url "https://github.com/jasondostal/diskscope/releases/download/v1.2.0/diskscope-cli-1.2.0-macos-arm64.tar.gz"
  sha256 "80f7b093528be82decafbce1cfb11b147e8cc132e80b2cf963f9049032588ac8"
  version "1.2.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "diskscope"
  end

  def caveats
    <<~EOS
      The diskscope cask also links a `diskscope` binary - install one or the
      other, not both. This formula is the Gatekeeper-free path: formula
      installs never get the quarantine attribute.
    EOS
  end

  test do
    assert_match "diskscope scan", shell_output("#{bin}/diskscope --bench . 2>&1")
  end
end
