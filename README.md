Acer Chromebook C7 / C710
=========================

This repo holds configuration etc for running archlinux on the acer chromebook
C7 / C710

The chromebook is configured to boot linux only using a custom compiled [coreboot BIOS image](http://www.coreboot.org/Welcome_to_coreboot)

You can find the coreboot source on the [chromium git repo](https://git.chromium.org/gitweb/?p=chromiumos/third_party/coreboot.git).
I have the parrot variant (celeton 847), there are 2 variants so be careful.

RAM has been upgraded to 4GB

HDD has been replaced with a fast 64GB SSD

System is configured to run without any swap partition


            ,                       _     _ _
           /#\        __ _ _ __ ___| |__ | (_)_ __  _   ___  __
          /###\      / _` | '__/ __| '_ \| | | '_ \| | | \ \/ /
         /#####\    | (_| | | | (__| | | | | | | | | |_| |>  <
        /##,-,##\    \__,_|_|  \___|_| |_|_|_|_| |_|\__,_/_/\_\
       /##(   )##\
      /#.--   --.#\   A simple, elegant GNU/Linux distribution.
     /`           `\

    > OS: Arch Linux x86_64
    > Kernel: 4.0.4-2-EQUK
    > Shell: /usr/bin/zsh
    > Packages: 1060
    > WM: i3
    > GTK2 theme: Adwaita
    > GTK2 icon theme: Faenza-Dark
    > GTK2 font name: Cantarell 11
    > RAM: 221M / 3888M (5%)
    > CPU: Intel(R) Celeron(R) CPU 847 @ 1.10GHz
    > SSD: 64GB Sandisk Ultra Plus
    > IO SCHED: bfq


Catch me on the archlinux or gentoo forum: equilibrium

	SSD Speed (hdparm -tT):
	1400 MB in  3.00 seconds = 466.41 MB/sec


Main Apps
=========

    Web Browser: Google Chromium & Mozilla Firefox
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

    options ath9k btcoex_enable=1 ps_enable=1 bt_ant_diversity=1

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
