cask "quick-term" do
  version "1.1.0"
  sha256 "51c9bf8731eb4beb8756e1480da9378dcef154c03e4b0a5e1d3bd7058209571d"

  # Artifacts are hosted on this public tap (source repo is private).
  url "https://github.com/zeddotes/homebrew-tap/releases/download/quick-term-v#{version}/QuickTerm_#{version}_macos_universal.app.zip"
  name "QuickTerm"
  desc "Menubar quick terminal for macOS"
  homepage "https://github.com/zeddotes/quick-term"

  depends_on macos: ">= :monterey"

  app "QuickTerm.app"

  # Third-party tap only: clears Gatekeeper quarantine after install.
  # Official homebrew/cask will reject this pattern.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/QuickTerm.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.quickterm.app",
    "~/Library/Caches/com.quickterm.app",
    "~/Library/Logs/com.quickterm.app",
    "~/Library/WebKit/com.quickterm.app",
    "~/Library/Preferences/com.quickterm.app.plist",
  ]
end
