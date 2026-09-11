cask "downmark" do
  version "1.0"
  sha256 "74946be0e72c2eccbea24e0dab4f315a2b2bfe1aa37a421210c2dab88f061f77"

  url "https://github.com/littledynamitenz/downmark/releases/download/v#{version}/Downmark.dmg"
  name "Downmark"
  desc "Apple Silicon native Markdown editor and companion CLI"
  homepage "https://littledynamite.co.nz/downmark/"

  depends_on macos: :ventura

  app "Downmark.app"
  binary "#{appdir}/Downmark.app/Contents/SharedSupport/bin/downmark"

  zap trash: [
    "~/Library/Application Support/co.nz.littledynamite.downmark",
    "~/Library/Preferences/co.nz.littledynamite.downmark.plist",
    "~/Library/Saved Application State/co.nz.littledynamite.downmark.savedState",
  ]
end
