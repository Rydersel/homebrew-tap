cask "candela" do
  version "1.0.6"
  sha256 "a8e8c2199e01d4001d6721c41bdf1181bfb75533847115797c1cb3d0cdcbe158"

  url "https://github.com/Rydersel/Candela/releases/download/v#{version}/Candela-#{version}.1.dmg"
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
