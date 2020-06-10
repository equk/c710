# Acer Chromebook C7 / C710

This repo holds configuration etc for running archlinux on the Acer Chromebook C7 / C710 (Parrot 🦜)

The chromebook is configured to boot linux using a custom compiled [coreboot BIOS image](http://www.coreboot.org/)

![](./img/coreboot.svg)

## Table of Contents

* [Specification](#specs)
* [Linux Configuration / Tweaks](#specific-configuration--tweaks)
* [Coreboot Resources](#coreboot-resources)
* [Dotfiles Patch](#dotfiles-patch)
* [Contact](#contact)

## Specs

I have the 🦜parrot variant (celeron 847).

RAM has been upgraded to 4GB

HDD has been replaced with a fast 64GB SSD

            ,                       _     _ _
           /#\        __ _ _ __ ___| |__ | (_)_ __  _   ___  __
          /###\      / _` | '__/ __| '_ \| | | '_ \| | | \ \/ /
         /#####\    | (_| | | | (__| | | | | | | | | |_| |>  <
        /##,-,##\    \__,_|_|  \___|_| |_|_|_|_| |_|\__,_/_/\_\
       /##(   )##\
      /#.--   --.#\   A simple, elegant GNU/Linux distribution.
     /`           `\

    > OS: Arch Linux x86_64
    > Shell: /usr/bin/zsh
    > WM: i3
    > GTK2 theme: Adwaita
    > GTK2 icon theme: Faenza-Dark
    > GTK2 font name: Cantarell 11
    > RAM: 221M / 3888M (5%)
    > CPU: Intel(R) Celeron(R) CPU 847 @ 1.10GHz
    > SSD: 64GB Sandisk Ultra Plus


Catch me on the archlinux or gentoo forum: `equilibrium`

    SSD Speed (hdparm -tT):
    1400 MB in  3.00 seconds = 466.41 MB/sec

## Specific Configuration / Tweaks

### Synaptics Tweaks:

/etc/X11/xorg.conf.d/10-cros-touchpad.conf

    Section "InputClass"
        Identifier      "touchpad peppy cyapa"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        MatchProduct    "cyapa"
        Option          "FingerLow" "10"
        Option          "FingerHigh" "25"
    EndSection

### WiFi / Bluetooth Tweaks:

`/etc/modprobe.d/ath9k.conf`

    options ath9k btcoex_enable=1 ps_enable=1 bt_ant_diversity=1

### Graphics Configuration:

`/etc/X11/xorg.conf.d/20-intel.conf`

    Section "Device"
        Identifier  "Intel Graphics"
        Driver      "intel"
        Option      "AccelMethod"  "sna"
        Option      "TearFree"  "true"
    EndSection

### GPU Packages:

    extra/intel-dri
    extra/libva-intel-driver
    extra/xf86-video-intel
    multilib/lib32-intel-dri

## Coreboot Resources

Some links you may find helpful for building coreboot.

* [Coreboot Docs](https://doc.coreboot.org/)
* [Building Coreboot](https://www.coreboot.org/Build_HOWTO)
* [Coreboot Payloads](https://doc.coreboot.org/payloads.html)

## Dotfiles Patch

`./dotfiles/c710.patch`

As I mostly keep my [dotfiles](https://github.com/equk/dotfiles) repo updated I have provided a patch for c710 specific changes.

# Contact

Website: https://equk.co.uk

Twitter: [@equilibriumuk](https://twitter.com/equilibriumuk)