cask "candela" do
  version "1.0.0"
  sha256 "c1b3d85fcad33e7993f27654d6fba1013ace58c4e5a7ce35247ad360571078f0"

  url "https://github.com/Rydersel/Candela/releases/download/v#{version}/Candela-#{version}.zip"
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
