cask "frok" do
  version "1.1.0"
  sha256 "6ddc51817289b514c1cdc815d6f845319765d8492c3f8c1007bd1e0ba33cb736"

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
