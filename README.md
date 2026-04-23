<p align="center">
  <img src="icon.png" alt="BicMac" width="160" />
</p>

<h1 align="center">BicMac</h1>

<p align="center">
  <em>A lightweight macOS menu bar app that keeps your clipboard, screenshots, windows, and displays within a keystroke.</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/macOS-14%2B-222222?logo=apple&logoColor=white" alt="macOS 14+" />
  <img src="https://img.shields.io/badge/Swift-6-F05138?logo=swift&logoColor=white" alt="Swift 6" />
  <img src="https://img.shields.io/badge/version-0.1.2-4A90D9" alt="Version" />
</p>

<p align="center">
  <a href="README.ko.md">한국어</a>
</p>

---

## Features

| Module | Description |
|---|---|
| 🍔 **Clipboard** | Persistent history with full-text search, popover at cursor, arrow-key + Enter selection, number-key quick copy |
| 📸 **Screenshot** | Full screen, region, and window capture via ScreenCaptureKit |
| 🪟 **Window Manager** | Snap windows to preset positions with a single hotkey |
| ⚡ **App Switcher** | Visual app and window switcher with live thumbnails |
| 🖥️ **Monitor Control** | Adjust brightness and display settings from the menu bar |

All hotkeys are fully user-configurable with live conflict detection.

---

## Requirements

- macOS 14 (Sonoma) or later
- Accessibility and Screen Recording permissions (prompted on first launch)

---

## Installation

```sh
brew tap supaicy/bicmac-tap
brew install --cask bicmac
```

### Update

```sh
brew update && brew upgrade --cask bicmac
```

### Uninstall

```sh
brew uninstall --cask bicmac
```

---

## Usage

1. Launch **BicMac** — it appears as a 🍔 icon in your menu bar
2. Grant **Accessibility** and **Screen Recording** permissions when prompted
3. Click the icon to open the panel and switch between modules using the tab bar

---

## Default Hotkeys

| Action | Default |
|---|---|
| Clipboard Popover | `⌘⇧C` |
| App Switcher | `⌥⇥` (Option + Tab) |
| Full Screen Screenshot | — |
| Region Screenshot | — |
| Window Screenshot | — |
| Window Snap Picker | — |

Unset hotkeys can be assigned from each module's settings panel.

---

## Security

BicMac is distributed with ad-hoc signing. On first launch, macOS may show a Gatekeeper warning — go to **System Settings → Privacy & Security → Open Anyway** to allow it.

- Binaries: [github.com/supaicy/BicMac-releases](https://github.com/supaicy/BicMac-releases)
- Builds are produced locally on a Mac; no third-party build servers are involved.
