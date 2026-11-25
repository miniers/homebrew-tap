cask "mcode" do
  arch arm: "arm64", intel: "amd64"

  version "0.2.36"
  sha256 arm:   "cd9934a7abee03d085f38be30a9c06cdfd36b8fa239543244da2eeedc569b262",
         intel: "835681ceadbdb21c9003f85a4e1742cb488b749b095e2cce194dbc8ba1664cfc"

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
