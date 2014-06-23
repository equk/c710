c710
====

Acer Chromebook C7 / C710
=========================

This repo holds configuration etc for running archlinux on the acer chromebook
C7 / C710

The chromebook is configured to boot linux only using a custom compiled coreboot
BIOS image

RAM has been upgraded to 4GB


            ,                       _     _ _
           /#\        __ _ _ __ ___| |__ | (_)_ __  _   ___  __
          /###\      / _` | '__/ __| '_ \| | | '_ \| | | \ \/ /
         /#####\    | (_| | | | (__| | | | | | | | | |_| |>  <
        /##,-,##\    \__,_|_|  \___|_| |_|_|_|_| |_|\__,_/_/\_\
       /##(   )##\
      /#.--   --.#\   A simple, elegant GNU/Linux distribution.
     /`           `\

    > OS: Arch Linux x86_64
    > Kernel: 3.14.8-1-ck
    > Shell: /usr/bin/zsh
    > Packages: 1010
    > WM: i3
    > GTK2 theme: Adwaita
    > GTK2 icon theme: Faenza-Dark
    > GTK2 font name: Cantarell 11
    > RAM: 510M / 3888M (13%)
    > CPU: Intel(R) Celeron(R) CPU 847 @ 1.10GHz


Catch me on the archlinux or gentoo forum: equilibrium


Main Apps
=========

    Web Browser: Google Chrome
    File Manager: Thunar
    Twitter Client: Tweetdeck Web
    Desktop Stats: Conky
    Desktop Background: Nitrogen
    Text Editor: vim & Sublime Text 3
    Image Editor: Gimp
    Video Playback: VLC
    Launcher: dmenu
    Music Playback: DeaDBeeF
    Python IDE: PyCharm & vim & Sublime Text 3
    Email Client: Thunderbird + Enigmail


Specific Configuration / Tweaks
===============================

Synaptics Tweaks:

/etc/X11/xorg.conf.d/10-cros-touchpad.conf

    Section "InputClass"
        Identifier      "touchpad peppy cyapa"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        MatchProduct    "cyapa"
        Option          "FingerLow" "10"
        Option          "FingerHigh" "25"
    EndSection

WiFi / Bluetooth Tweaks:

/etc/modprobe.d/ath9k.conf

    options ath9k btcoex_enable=1 ps_enable=1 bt_ant_diversity=1 nohwcrypt=1

Graphics Configuration:

/etc/X11/xorg.conf.d/20-intel.conf

    Section "Device"
        Identifier  "Intel Graphics"
        Driver      "intel"
        Option      "AccelMethod"  "sna"
        Option      "TearFree"  "true"
    EndSection

GPU Packages:

    extra/intel-dri
    extra/libva-intel-driver
    extra/xf86-video-intel
    multilib/lib32-intel-dri

Kernel:

    repo-ck/linux-ck-sandybridge
    repo-ck/linux-ck-sandybridge-headers

