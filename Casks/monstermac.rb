cask "monstermac" do
  version "1.4.1"
  sha256 "42444f884a1340b3b5b1ccb74f3d5452b7d5a892632636a7a1d7e84f80490eb6"

  url "https://github.com/quino0627/MonsterMac-releases/releases/download/v#{version}/MonsterMac-#{version}.dmg"
  name "MonsterMac"
  desc "노치에서 화면 유지, AI 구독 사용량과 외장 모니터 제어"
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
