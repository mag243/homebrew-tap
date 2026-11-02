# Written by tools/homebrew/cask.sh from tools/homebrew/pairwise.rb.template in
# mag243/pairwise on every release (ADR 0059); changes made here are overwritten.
cask "pairwise" do
  version "0.1.1,2026.1102.175201"
  sha256 "df061756145a0378b0d629054a79618028801d7f21d94a84c8f7c82370ce01fb"

  url "https://github.com/mag243/pairwise/releases/download/v#{version.csv.first}/Pairwise-#{version.csv.first}-#{version.csv.second}.zip"
  name "Pairwise"
  desc "Join two windows so they move and resize together"
  homepage "https://github.com/mag243/pairwise"

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
