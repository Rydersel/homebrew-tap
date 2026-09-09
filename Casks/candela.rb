cask "candela" do
  version "1.0.3"
  sha256 "6cce34ef40a87d2a728f99373b212f266087136592d32749afb71eb763f3f6d2"

  url "https://github.com/Rydersel/Candela/releases/download/v#{version}/Candela-#{version}.dmg"
  name "Candela"
  desc "Looks after your displays: panel health, burn-in protection, everyday controls"
  homepage "https://candela.fyi/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Candela.app"

  zap trash: [
    "~/Library/Application Support/Candela",
    "~/Library/Caches/com.rydersel.Candela",
    "~/Library/Preferences/com.rydersel.Candela.plist",
  ]
end
