cask "monstermac" do
  version "1.0.0"
  sha256 "bd5438cc9c4f8bf548d9d001b4608bc1501f56709782af35a9ca3270d467ed56"

  url "https://github.com/quino0627/MonsterMac-releases/releases/download/v#{version}/MonsterMac-#{version}.dmg"
  name "MonsterMac"
  desc "노치 왼쪽 버튼으로 Mac 화면과 시스템 잠자기를 제어"
  homepage "https://github.com/quino0627/MonsterMac-releases"

  depends_on macos: ">= :ventura"
  app "MonsterMac.app"
  uninstall quit: "io.github.quino0627.MonsterMac"

  zap trash: [
    "~/Library/Application Support/MonsterMac",
    "~/Library/Preferences/io.github.quino0627.MonsterMac.plist",
  ]
end
