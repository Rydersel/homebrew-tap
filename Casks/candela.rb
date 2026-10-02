cask "candela" do
  version "1.0.5"
  sha256 "2a4abae5643317221c66085f6cde3de00542fa25d61b7f486e8637f9a0c135ac"

  url "https://github.com/Rydersel/Candela/releases/download/v#{version}/Candela-#{version}.dmg"
  name "Candela"
  desc "Looks after your displays: panel health, burn-in protection, everyday controls"
  homepage "https://candela.fyi/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Candela.app"

  zap trash: [
    "~/Library/Application Support/Candela",
    "~/Library/Caches/com.rydersel.Candela",
    "~/Library/Preferences/com.rydersel.Candela.plist",
  ]
end
