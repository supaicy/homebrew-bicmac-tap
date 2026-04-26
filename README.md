<p align="center">
  <img src="icon.png" alt="BicMac" width="160" />
</p>

<h1 align="center">BicMac</h1>

<p align="center">
  <em>Menu bar app for clipboard history, screenshots, window snapping, and app switching.</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/macOS-14%2B-222222?logo=apple&logoColor=white" alt="macOS 14+" />
  <img src="https://img.shields.io/badge/Swift-6-F05138?logo=swift&logoColor=white" alt="Swift 6" />
  <img src="https://img.shields.io/github/v/release/supaicy/BicMac-releases?label=version&color=4A90D9" alt="Version" />
  <img src="https://img.shields.io/github/downloads/supaicy/BicMac-releases/total?label=downloads&color=4A90D9" alt="Downloads" />
</p>

<p align="center">
  <a href="README.ko.md">한국어</a>
</p>

---

## Features

| Module | Description |
|---|---|
| **Clipboard** | Searchable history, popover at cursor, arrow keys + number keys to paste |
| **Screenshot** | Full screen, region, or window via ScreenCaptureKit |
| **Window Manager** | Snap to preset positions with a hotkey |
| **App Switcher** | App and window switcher with live thumbnails |
| **Monitor Control** | Brightness and display settings from the menu bar |

All hotkeys are user-configurable. Conflicts are detected live.

---

## Requirements

- macOS 14 (Sonoma) or later
- Accessibility and Screen Recording permissions (prompted on first launch)

---

## Installation

### Homebrew (recommended)

```sh
brew tap supaicy/bicmac-tap
brew install --cask bicmac
```

### Direct download (.dmg)

Don't use Homebrew? Download the latest `.dmg` from [BicMac-releases](https://github.com/supaicy/BicMac-releases/releases/latest) and drag `BicMac.app` into Applications. See [Security](#security) for the one-time first-launch step.

### Update

```sh
brew update && brew upgrade --cask bicmac
```

For .dmg installs: redownload from the same releases page and replace `BicMac.app` in Applications. The in-app banner notifies you when a new version is out.

### Uninstall

```sh
brew uninstall --cask bicmac
```

---

## Usage

1. Launch **BicMac**. A 🍔 icon appears in the menu bar.
2. Grant **Accessibility** and **Screen Recording** permissions when prompted.
3. Click the icon to open the panel. Switch modules with the tab bar.

---

## Default Hotkeys

| Action | Default |
|---|---|
| Clipboard Popover | `⌘⇧C` |
| App Switcher | `⌥⇥` (Option + Tab) |
| Full Screen Screenshot | unset |
| Region Screenshot | unset |
| Window Screenshot | unset |
| Window Snap Picker | unset |

Unset hotkeys can be assigned from each module's settings panel.

---

## Security

BicMac is distributed with ad-hoc signing. On first launch, macOS may show a Gatekeeper warning. Go to **System Settings → Privacy & Security → Open Anyway** to allow it.

- Binaries: [github.com/supaicy/BicMac-releases](https://github.com/supaicy/BicMac-releases)
- Builds are produced locally on a Mac. No third-party build servers.
