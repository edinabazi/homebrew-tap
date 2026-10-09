cask "playhead" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "28b228e88dbf10b665bd200d2f5de43cc60d251c2f33ff200deff309e6831611",
         intel: "c7902ffa69132d18e149a122176960a613961c9f4cfd3886152b2744d4b5e557"

  url "https://github.com/edinabazi/playhead/releases/download/v#{version}/Playhead-mac-#{arch}.dmg"
  name "Playhead"
  desc "Local-first music player with waveform playback"
  homepage "https://playheadapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Playhead.app"

  zap trash: [
    "~/Library/Application Support/Playhead",
    "~/Library/Caches/com.playhead.app",
    "~/Library/Caches/com.playhead.app.ShipIt",
    "~/Library/Caches/playhead-updater",
    "~/Library/HTTPStorages/com.playhead.app",
    "~/Library/Preferences/com.playhead.app.plist",
    "~/Library/Saved Application State/com.playhead.app.savedState",
  ]
end
