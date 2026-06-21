cask "frok" do
  version "1.1.1"
  sha256 "6b7f620b8a50b967058d4503ee69c6ea41a269fbaed73dc263811d41e40e9b16"

  url "https://github.com/yabred/FROK/releases/download/v#{version}/FROK-#{version}.zip"
  name "FROK"
  desc "Instant sound effects for macOS from the menu bar, hotkeys, or command line"
  homepage "https://github.com/yabred/FROK"

  depends_on macos: :sonoma

  app "FROK.app"
  binary "FROK.app/Contents/Resources/bin/frok", target: "frok"

  zap trash: [
    "~/Library/Preferences/com.YB.frok.plist",
  ]
end
