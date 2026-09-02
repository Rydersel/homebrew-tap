cask "candela" do
  version "1.0.0"
  sha256 "16caf08c472bd35a4d08945fd52474afbdc211b411d21d5272fe81b00a437222"

  url "https://github.com/Rydersel/Candela/releases/download/v#{version}/Candela-#{version}.dmg"
  name "Candela"
  desc "Looks after your displays: panel health, burn-in protection, and the everyday controls"
  homepage "https://candela.fyi/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Candela.app"

  zap trash: [
    "~/Library/Application Support/Candela",
    "~/Library/Caches/com.rydersel.Candela",
    "~/Library/Preferences/com.rydersel.Candela.plist",
  ]
end
