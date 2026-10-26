# MonsterMac

노치 왼쪽의 검은 버튼으로 Mac의 화면 유지를 켜고 끄는 앱입니다.

[최신 DMG 내려받기](https://github.com/quino0627/MonsterMac-releases/releases/latest)

## 설치

DMG를 열고 `MonsterMac.app`을 `Applications`로 옮기세요. macOS 13 이상에서 실행됩니다. Apple Silicon과 Intel 실행 파일을 포함합니다.

Homebrew로 설치할 수도 있습니다.

```sh
brew tap quino0627/monstermac https://github.com/quino0627/MonsterMac-releases
brew install --cask quino0627/monstermac/monstermac
```

## 사용

- 노치 왼쪽 버튼 클릭: 켜기 또는 끄기.
- 초록색 ‘유지’: 화면 유지 켜짐.
- 오른쪽 클릭: 메뉴와 종료.
- 노치가 없으면 화면 위쪽 가운데에 표시합니다.

켜기를 누르면 macOS가 관리자 인증을 요청합니다. 앱은 암호를 저장하지 않습니다. 끄거나 앱을 종료하면 잠자기 설정을 복구합니다. Mac의 암호 요구 설정과 수동 잠금은 유지합니다.

배터리 사용 중 잔량이 20% 이하이거나 Mac의 온도가 높으면 기능을 끕니다. 다른 잠자기 방지 앱의 세션은 끝내고 사용하세요.

[개인정보처리방침](PRIVACY.md)

이 저장소에는 설치 파일과 배포 정보만 있습니다. 앱 소스는 별도 비공개 저장소에 보관합니다. App Store 출시는 보류합니다.
