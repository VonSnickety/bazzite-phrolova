#!/bin/bash

set -ouex pipefail

### Remove Handheld/Steam Deck Support
rpm-ostree override remove \
    hhd \
    hhd-ui \
    adjustor \
    powerbuttond \
    jupiter-fan-control \
    steam-powerbuttond \
    steamdeck-kde-presets \
    chimera \
    gamescope \
    gamescope-session-plus \
    gamescope-session-steam \
    decky-loader \
    discover-overlay \
    || true

### Remove Printing/Scanning
rpm-ostree override remove \
    cups \
    cups-browsed \
    cups-filters \
    hplip \
    sane-backends \
    bluez-cups \
    || true

### Remove Emulators (verified RPMs only)
rpm-ostree override remove \
    retroarch \
    retroarch-assets \
    retroarch-filters \
    retroarch-overlays \
    dolphin-emu \
    rom-properties-kf6 \
    || true

### Remove Accessibility
rpm-ostree override remove \
    orca \
    espeak-ng \
    speech-dispatcher \
    brltty \
    || true

### Remove Misc Unused
rpm-ostree override remove \
    fprintd \
    fprintd-pam \
    waydroid \
    waydroid-selinux \
    fcitx5 \
    fcitx5-mozc \
    fcitx5-chinese-addons \
    fcitx5-hangul \
    kcm-fcitx5 \
    input-remapper \
    || true

### Install Utilities
dnf5 install -y --skip-broken \
    tmux \
    firefox \
    fastfetch

### System Services
systemctl enable podman.socket
systemctl set-default graphical.target

### Deploy User Configs
cp -r /ctx/skel/. /etc/skel/ || true
chmod -R 755 /etc/skel/.config 2>/dev/null || true
