# bazzite-hyprland

This repository provides a minimal and functional Hyprland setup on Bazzite, designed to be a generic and shareable base image. It uses a neutral Nordic-inspired theme, making it easy for anyone to use or customize further.

## Features

*   **Hyprland Window Manager:** A dynamic tiling Wayland compositor.
*   **Waybar:** Highly customizable Wayland bar for status information.
*   **Kitty:** Fast, feature-rich, GPU-accelerated terminal emulator.
*   **Rofi:** A window switcher, application launcher, and dmenu replacement.
*   **Mako:** Lightweight Wayland notification daemon.
*   **Screenshot Tools:** `grim`, `slurp`, `swappy` for screen capturing.
*   **Media Controls:** Integrated volume, brightness, and media playback controls.
*   **Essential Packages:** A curated set of packages for a productive desktop environment.
*   **Nordic Theme:** A clean, neutral Nordic-inspired color scheme (grays, blues, whites) for a consistent look across applications.

## Keybinds Cheatsheet

Here are some common keybindings for this Hyprland setup:

*   `SUPER + Q`: Kill active window
*   `SUPER + M`: Exit Hyprland
*   `SUPER + E`: File manager (Dolphin)
*   `SUPER + V`: Toggle floating mode for a window
*   `SUPER + D`: Rofi launcher
*   `SUPER + Return`: Terminal (Kitty)
*   `SUPER + F`: Fullscreen toggle
*   `SUPER + [1-9]`: Switch to workspace 1-9
*   `SUPER + Shift + [1-9]`: Move active window to workspace 1-9
*   `SUPER + arrows`: Move focus between windows
*   `SUPER + Shift + arrows`: Move active window
*   `SUPER + mouse drag`: Move/resize windows

*   `Print`: Screenshot area
*   `Shift + Print`: Screenshot full screen

*   `XF86AudioRaiseVolume`: Increase volume
*   `XF86AudioLowerVolume`: Decrease volume
*   `XF86AudioMute`: Toggle mute
*   `XF86AudioPlay`: Play/Pause media
*   `XF86AudioNext`: Next media track
*   `XF86AudioPrev`: Previous media track

*   `XF86MonBrightnessUp`: Increase screen brightness
*   `XF86MonBrightnessDown`: Decrease screen brightness

*   `SUPER + L`: Lock screen (hyprlock)

## Installation

This image is built on Bazzite. To switch to this image, run the following command:

```bash
sudo bootc switch ghcr.io/vonsnickety/bazzite-hyprland:latest
```

After the command finishes, reboot your system:

```bash
systemctl reboot
```

## Customization

This repository is designed to be a generic base. You can easily customize it further:

*   **Dotfiles:** For personal theming and configuration overlays, consider creating a separate dotfiles repository.
*   **Packages:** Modify `build_files/build.sh` to add or remove packages.
*   **Configuration Files:** Adjust the configuration files in `build_files/skel/.config/` to change settings for Hyprland, Waybar, Kitty, Rofi, and Mako.
*   **Wallpaper:** Set your preferred wallpaper using `hyprpaper`.

## Building Your Own Image

If you wish to build your own image from this repository, you will need to:

1.  Fork this repository on GitHub.
2.  Enable GitHub Actions for your forked repository.
3.  (Optional but Recommended) Create a Cosign key and add it as a `SIGNING_SECRET` to your GitHub repository secrets for image signing.
4.  The GitHub Actions workflow will automatically build and publish your custom image to `ghcr.io/<your-github-username>/bazzite-hyprland:latest`.

Refer to the original template's documentation for more detailed instructions on setting up Cosign and building images if needed.