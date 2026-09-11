cask "gutter" do
  version "1.0"
  sha256 "d931d6aeddfa441773d462effaa6b55f54a61cf581461e592aca4814a526132a"

  url "https://github.com/littledynamitenz/gutter/releases/download/v#{version}/Gutter.dmg"
  name "Gutter"
  desc "Apple Silicon native Markdown editor and companion CLI"
  homepage "https://littledynamite.co.nz/gutter/"

  depends_on macos: :ventura

  app "Gutter.app"
  binary "#{appdir}/Gutter.app/Contents/SharedSupport/bin/gutter"

  zap trash: [
    "~/Library/Application Support/co.nz.littledynamite.gutter",
    "~/Library/Preferences/co.nz.littledynamite.gutter.plist",
    "~/Library/Saved Application State/co.nz.littledynamite.gutter.savedState",
  ]
end
