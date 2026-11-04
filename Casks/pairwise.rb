# Written by tools/homebrew/cask.sh from tools/homebrew/pairwise.rb.template in
# mag243/pairwise on every release (ADR 0059); changes made here are overwritten.
cask "pairwise" do
  version "0.3.0,2026.1104.175501"
  sha256 "5fc632eafa694ae0cdc438de561f9017d4d66469c3b9d7341671fea7420f1c92"

  url "https://github.com/mag243/pairwise/releases/download/v#{version.csv.first}/Pairwise-#{version.csv.first}-#{version.csv.second}.zip"
  name "Pairwise"
  desc "Join two windows so they move and resize together"
  homepage "https://pairwise.m-domain.me/"

  livecheck do
    url "https://pairwise.m-domain.me/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Pairwise.app"

  uninstall quit: "me.m-domain.pairwise"

  zap trash: [
    "~/Library/Application Support/me.m-domain.pairwise",
    "~/Library/Caches/me.m-domain.pairwise",
    "~/Library/HTTPStorages/me.m-domain.pairwise",
    "~/Library/Preferences/me.m-domain.pairwise.plist",
    "~/Library/Saved Application State/me.m-domain.pairwise.savedState",
  ]
end
