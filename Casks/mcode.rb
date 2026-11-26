cask "mcode" do
  arch arm: "arm64", intel: "amd64"

  version "0.2.37"
  sha256 arm:   "72e4cff5e8b8f25845ae38de8350c9271cebe8a10ebc2cec5c081bb0ab142350",
         intel: "b56c57d7e3d3e4cd9d401df83e0331e25a92dfd05c859cfad77ed27b97b7d7ed"

  url "https://github.com/miniers/MCode/releases/download/v#{version}/mcode-#{version}-#{arch}.dmg"
  name "MCode"
  desc "Native desktop AI coding workbench"
  homepage "https://github.com/miniers/MCode"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "MCode.app"
end
