# Written by tools/homebrew/cask.sh from tools/homebrew/treewise.rb.template in
# mag243/treewise on every release (ADR 0033); changes made here are overwritten.
cask "treewise" do
  version "0.9.4,2026.1121.100102"
  sha256 "78f2b3cff6abccdc0c9920021e36b1c72ffe8f31e26f3c7e5f9bdff39e5b49ea"

  url "https://github.com/mag243/treewise/releases/download/v#{version.csv.first}/Treewise-#{version.csv.first}-#{version.csv.second}.zip"
  name "Treewise"
  desc "File manager with the behaviour of Windows Explorer"
  homepage "https://treewise.m-domain.me/"

  livecheck do
    url "https://treewise.m-domain.me/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Treewise.app"

  zap trash: [
    "~/Library/Caches/me.m-domain.treewise",
    "~/Library/HTTPStorages/me.m-domain.treewise",
    "~/Library/Preferences/me.m-domain.treewise.plist",
    "~/Library/Saved Application State/me.m-domain.treewise.savedState",
  ]
end
