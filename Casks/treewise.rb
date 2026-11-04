# Written by tools/homebrew/cask.sh from tools/homebrew/treewise.rb.template in
# mag243/treewise on every release (ADR 0033); changes made here are overwritten.
cask "treewise" do
  version "0.4.0,2026.1104.125801"
  sha256 "3ae2a3150eda2a9f9c72a0aa6511f4ea6f825fd113f70772db23eb785643d53b"

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
