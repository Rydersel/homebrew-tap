cask "candela" do
  version "1.0.0"
  sha256 "b9b1d34c1df2cd64f6b65dba3d26a1d6466c094d2376a6c65a62e7d7d0d7870e"

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
