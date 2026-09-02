cask "candela" do
  version "1.0.0"
  sha256 "62e925ead2c0cc9a94e1dd87750859006be7674a3731d353570a8d9a31496a4b"

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
