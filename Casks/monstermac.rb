cask "monstermac" do
  version "1.1.0"
  sha256 "7d882375c9c7e4da27713783f0bc9681860b5491e105e21d8558e033bf9856b9"

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
