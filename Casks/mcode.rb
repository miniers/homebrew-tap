cask "mcode" do
  arch arm: "arm64", intel: "amd64"

  version "0.2.35"
  sha256 arm:   "7fdd8710ade7a9bd5a54e3a622cd971546ed64d544f79e031209c2f7d3f326a3",
         intel: "99be5fb0f0255afc1819db17b7f6e4be8758872406cf93df8dbfc93d0f7f5141"

  url "https://github.com/miniers/MCode/releases/download/v#{version}/mcode-#{version}-#{arch}.dmg"
  name "MCode"
  desc "Native desktop AI coding workbench"
  homepage "https://github.com/miniers/MCode"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "MCode.app"
end
