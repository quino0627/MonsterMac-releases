cask "monstermac" do
  version "1.3.2"
  sha256 "990f05133e928fe041f940803107c127e8e89ace002b26b3ec18f932e036ab31"

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
