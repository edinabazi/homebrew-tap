cask "kompakt" do
  version "1.1.2"
  sha256 "4c68da5f0b31ce655c3eee58d06b89b5ddc31f89462c81da31fc6a72f11901a3"

  url "https://github.com/edinabazi/Kompakt/releases/download/v#{version}/Kompakt.dmg"
  name "Kompakt"
  desc "Menu bar app for optimising and converting images and videos"
  homepage "https://kompaktapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Kompakt.app"

  uninstall quit: "com.edinabazi.Kompakt"

  zap trash: [
    "~/Library/Application Support/Kompakt",
    "~/Library/Caches/com.edinabazi.Kompakt",
    "~/Library/Containers/com.edinabazi.Kompakt",
    "~/Library/HTTPStorages/com.edinabazi.Kompakt",
    "~/Library/Preferences/com.edinabazi.Kompakt.plist",
  ]
end
