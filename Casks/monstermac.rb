cask "monstermac" do
  version "1.3.4"
  sha256 "3e8fcf3ca714421899fd7d1aa023c8a36dd20d8e36cba405d202b7fc2289b3a5"

  url "https://github.com/quino0627/MonsterMac-releases/releases/download/v#{version}/MonsterMac-#{version}.dmg"
  name "MonsterMac"
  desc "노치 왼쪽 버튼으로 Mac 화면과 시스템 잠자기를 제어"
  homepage "https://github.com/quino0627/MonsterMac-releases"

  depends_on macos: :ventura
  app "MonsterMac.app"
  uninstall quit: "io.github.quino0627.MonsterMac",
            script: {
              executable: "#{appdir}/MonsterMac.app/Contents/MacOS/MonsterMac",
              args: ["--unregister-helper"],
              sudo: false,
            }

  zap trash: [
    "~/Library/Application Support/MonsterMac",
    "~/Library/Preferences/io.github.quino0627.MonsterMac.plist",
  ]
end
