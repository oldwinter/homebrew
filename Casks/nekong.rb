cask "nekong" do
  version "0.1.0"
  sha256 "1b00b291cb37407474cf7aae84c70aeede72a7fc5a45eeb653d60c1ed9ab45a4"

  url "https://github.com/oldwinter/nekong/releases/download/v#{version}/Nekong-#{version}-arm64.dmg"
  name "Nekong"
  desc "Local-first Electron AI agent desktop app"
  homepage "https://github.com/oldwinter/nekong"

  depends_on arch: :arm64

  app "Nekong.app"

  zap trash: [
    "~/Library/Application Support/Nekong",
    "~/Library/Logs/Nekong",
  ]
end
