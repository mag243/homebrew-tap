# Written by tools/homebrew/cask.sh from tools/homebrew/treewise.rb.template in
# mag243/treewise on every release (ADR 0033); changes made here are overwritten.
cask "treewise" do
  version "0.5.2,2026.1104.145301"
  sha256 "aa71cb9261742e0b726b9314aa695e2780887b9fa82d2746c02a82ad64b179cd"

  url "https://github.com/mag243/treewise-releases/releases/download/v#{version.csv.first}/Treewise-#{version.csv.first}-#{version.csv.second}.zip"
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
