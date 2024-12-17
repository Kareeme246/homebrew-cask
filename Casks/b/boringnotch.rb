cask "boringnotch" do
  version "2.3"
  sha256 "d893583bfc7e9d14c9bc14d82bca61aad5a77770ec28cccee1b276c97733115a"

  url "https://github.com/TheBoredTeam/boring.notch/releases/download/glowing-panda/GlowingPanda.dmg",
      verified: "github.com/TheBoredTeam/"
  name "Boring Notch"
  desc "Add functionality to your laptop notch"
  homepage "https://theboring.name/"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "boringNotch.app"

  caveats <<~EOS
    The app is not signed or notarized. You will need to allow it to run manually:
    - Go to settings -> Security
    - Click open anyway for the app to run
  EOS
end
