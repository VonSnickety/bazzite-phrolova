# Bazzite KDE Debloated

A streamlined KDE Plasma desktop built on Bazzite-DX, optimized for desktop gaming and development.

## Features

**Desktop Environment:**
- **KDE Plasma:** Full-featured desktop with Wayland support
- **Full KDE Apps:** Kate, Konsole, Dolphin, Ark, Spectacle, KDE Connect, Discover
- **SDDM:** Display manager

**Gaming:**
- **Steam:** Primary gaming platform
- **Lutris:** Multi-source game launcher
- **Heroic:** Epic/GOG/Amazon Games client
- **Bottles:** Wine prefix manager
- **MangoHud:** FPS overlay and performance monitoring
- **GameMode:** Automatic performance optimizations
- **ProtonUp-Qt:** Proton/Wine version manager

**Development Tools:**
- VS Code, Docker, Podman (from Bazzite-DX base)
- Container development support (distrobox, devpod)
- System monitoring and debugging tools

**Utilities:**
- Firefox browser
- Fastfetch system information
- Tmux terminal multiplexer

## What's Removed

This image removes components not needed for desktop gaming/development:

- **Handheld/Steam Deck support** (hhd, gamescope, steamdeck-presets, Decky)
- **Emulators** (RetroArch, Dolphin-emu)
- **Printing/scanning support** (CUPS, SANE, HPLIP)
- **Accessibility tools** (Orca, Brltty)
- **Android containers** (Waydroid)
- **CJK input methods** (Fcitx5)
- **Fingerprint support**

## Installation

To switch to this image:

```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/vonsnickety/bazzite-kde-debloated:latest
```

Then reboot:

```bash
systemctl reboot
```

## Building

### Using Devcontainer (Recommended)

1. Open the repo in VS Code
2. Install the Dev Containers extension
3. "Dev Containers: Reopen in Container"
4. Run `just build`

### Local Build

```bash
just build
```

## Customization

- **Packages:** Modify `build_files/build.sh`
- **Desktop Settings:** Use KDE System Settings after installation
- **User Configs:** Adjust files in `build_files/skel/.config/`

## Links

- [Bazzite Documentation](https://universal-blue.org/images/bazzite/)
- [Universal Blue](https://universal-blue.org/)
