<p align="center">
  <img src="icon.png" alt="BicMac" width="160" />
</p>

<h1 align="center">BicMac</h1>

<p align="center">
  <em>클립보드, 스크린샷, 윈도우 관리, 모니터 설정까지 — 단축키 하나로 모든 것을 제어하는 macOS 메뉴바 앱.</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/macOS-14%2B-222222?logo=apple&logoColor=white" alt="macOS 14+" />
  <img src="https://img.shields.io/badge/Swift-6-F05138?logo=swift&logoColor=white" alt="Swift 6" />
  <img src="https://img.shields.io/badge/version-0.1.3-4A90D9" alt="Version" />
  <img src="https://img.shields.io/github/downloads/supaicy/BicMac-releases/total?label=downloads&color=4A90D9" alt="Downloads" />
</p>

<p align="center">
  <a href="README.md">English</a>
</p>

---

## 기능

| 모듈 | 설명 |
|---|---|
| 🍔 **클립보드** | 전체 텍스트 검색, 커서 위치 팝오버, 방향키 + Enter 선택, 숫자 키 빠른 복사 |
| 📸 **스크린샷** | 전체 화면, 영역, 윈도우 캡처 (ScreenCaptureKit 기반) |
| 🪟 **윈도우 관리** | 단축키 하나로 윈도우를 원하는 위치에 스냅 |
| ⚡ **앱 전환기** | 라이브 썸네일이 있는 시각적 앱/윈도우 전환기 |
| 🖥️ **모니터 제어** | 메뉴바에서 밝기 및 디스플레이 설정 조정 |

모든 단축키는 충돌 감지 기능과 함께 자유롭게 변경할 수 있습니다.

---

## 요구 사항

- macOS 14 (Sonoma) 이상
- 손쉬운 사용(Accessibility) 및 화면 녹화(Screen Recording) 권한 (첫 실행 시 요청)

---

## 설치

```sh
brew tap supaicy/bicmac-tap
brew install --cask bicmac
```

### 업데이트

```sh
brew update && brew upgrade --cask bicmac
```

### 삭제

```sh
brew uninstall --cask bicmac
```

---

## 사용 방법

1. **BicMac** 실행 — 메뉴바에 🍔 이모지로 나타납니다
2. 첫 실행 시 **손쉬운 사용** 및 **화면 녹화** 권한을 허용합니다
3. 아이콘을 클릭해 패널을 열고 상단 탭 바로 모듈을 전환합니다

---

## 기본 단축키

| 기능 | 기본값 |
|---|---|
| 클립보드 팝오버 | `⌘⇧C` |
| 앱 전환기 | `⌥⇥` (Option + Tab) |
| 전체 화면 스크린샷 | — |
| 영역 스크린샷 | — |
| 윈도우 스크린샷 | — |
| 윈도우 스냅 피커 | — |

미설정 단축키는 각 모듈의 설정 패널에서 직접 지정할 수 있습니다.

---

## 보안

BicMac은 ad-hoc 서명으로 배포됩니다. 첫 실행 시 macOS Gatekeeper 경고가 표시될 수 있으며 **시스템 설정 → 개인 정보 보호 및 보안 → 확인 없이 열기**에서 허용할 수 있습니다.

- 바이너리: [github.com/supaicy/BicMac-releases](https://github.com/supaicy/BicMac-releases)
- 빌드는 로컬 Mac에서 직접 수행되며 제3자 서버를 거치지 않습니다.
