# Written by tools/homebrew/cask.sh from tools/homebrew/treewise.rb.template in
# mag243/treewise on every release (ADR 0033); changes made here are overwritten.
cask "treewise" do
  version "0.1.2,2026.1029.172501"
  sha256 "59e6dd3bc863db12c65a4c0eab377eedbb05d31c0a5ba5635d8b715c82212396"

  url "https://github.com/mag243/treewise-releases/releases/download/v#{version.csv.first}/Treewise-#{version.csv.first}-#{version.csv.second}.zip"
  name "Treewise"
  desc "File manager with the behaviour of Windows Explorer"
  homepage "https://mag243.github.io/treewise-releases/"

  livecheck do
    url "https://mag243.github.io/treewise-releases/appcast.xml"
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
