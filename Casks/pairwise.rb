# Written by tools/homebrew/cask.sh from tools/homebrew/pairwise.rb.template in
# mag243/pairwise on every release (ADR 0059); changes made here are overwritten.
cask "pairwise" do
  version "0.2.0,2026.1102.191801"
  sha256 "c3d05d63301713c0839bb794fd14a70b02538a542b4c129a43ffcd4907fe3d3a"

  url "https://github.com/mag243/pairwise/releases/download/v#{version.csv.first}/Pairwise-#{version.csv.first}-#{version.csv.second}.zip"
  name "Pairwise"
  desc "Join two windows so they move and resize together"
  homepage "https://mag243.github.io/pairwise/"

  livecheck do
    url "https://mag243.github.io/pairwise/appcast.xml"
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
