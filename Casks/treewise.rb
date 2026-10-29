# Written by tools/homebrew/cask.sh from tools/homebrew/treewise.rb.template in
# mag243/treewise on every release (ADR 0033); changes made here are overwritten.
cask "treewise" do
  version "0.1.1,2026.1029.164801"
  sha256 "d0ea96ae1dddcb4e8cd4e885f5cfecfcaedcdbdbbc5027c3005101bcfe728803"

  url "https://github.com/mag243/treewise-releases/releases/download/v#{version.csv.first}/Treewise-#{version.csv.first}-#{version.csv.second}.zip",
      verified: "github.com/mag243/treewise-releases/"
  name "Treewise"
  desc "File manager with the behaviour of Windows Explorer"
  homepage "https://mag243.github.io/treewise-releases/"

  livecheck do
    url "https://mag243.github.io/treewise-releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Treewise.app"

  zap trash: [
    "~/Library/Caches/me.m-domain.treewise",
    "~/Library/HTTPStorages/me.m-domain.treewise",
    "~/Library/Preferences/me.m-domain.treewise.plist",
    "~/Library/Saved Application State/me.m-domain.treewise.savedState",
  ]
end
