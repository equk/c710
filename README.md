# Acer Chromebook C7 / C710

This repo holds configuration etc for running archlinux on the Acer Chromebook C7 / C710 (Parrot 🦜)

The chromebook is configured to boot linux using a custom compiled [coreboot BIOS image](http://www.coreboot.org/)

## Table of Contents

* [Specification](#specs)
* [Linux Configuration / Tweaks](#specific-configuration--tweaks)
* [Coreboot Resources](#coreboot-resources)
* [Coreboot Config (UEFI Tianocore Payload)](#coreboot-config-uefi-tianocore-payload)
* [Coreboot Compile Output](#coreboot-compile-output)

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

## Coreboot Config (UEFI Tianocore)

    CONFIG_USE_BLOBS=y
    CONFIG_VENDOR_GOOGLE=y
    CONFIG_NO_POST=y
    CONFIG_INTEL_GMA_VBT_FILE="blobs/mainboard/google/parrot/vbt.bin"
    CONFIG_CBFS_SIZE=0x250000
    CONFIG_IFD_BIN_PATH="blobs/mainboard/google/parrot/flashdescriptor.bin"
    CONFIG_ME_BIN_PATH="blobs/mainboard/google/parrot/me.bin"
    CONFIG_BOARD_GOOGLE_PARROT=y
    # CONFIG_DRIVERS_UART_8250IO is not set
    CONFIG_PCIEXP_L1_SUB_STATE=y
    CONFIG_CPU_MICROCODE_CBFS_EXTERNAL_BINS=y
    CONFIG_CPU_UCODE_BINARIES="blobs/soc/intel/ivb/cpu_microcode_blob.bin"
    # CONFIG_USE_NATIVE_RAMINIT is not set
    CONFIG_LOCK_MANAGEMENT_ENGINE=y
    CONFIG_INTEL_GMA_ADD_VBT=y
    CONFIG_PAYLOAD_TIANOCORE=y

## Coreboot Compile Output

    Performing operation on 'COREBOOT' region...
    Name                           Offset     Type         Size
    cbfs master header             0x0        cbfs header  32
    cpu_microcode_blob.bin         0x80       microcode    22528
    config                         0x5900     raw          248
    revision                       0x5a40     raw          569
    cmos_layout.bin                0x5cc0     cmos_layout  1412
    fallback/dsdt.aml              0x6280     raw          12867
    payload_config                 0x9540     raw          1563
    payload_revision               0x9bc0     raw          233
    (empty)                        0x9d00     null         25176
    fallback/romstage              0xff80     stage        68868
    fallback/payload               0x20d00    payload      61118
    (empty)                        0x2fc00    null         664
    mrc.cache                      0x2fec0    mrc_cache    65536
    fallback/ramstage              0x3ff00    stage        69806
    pci8086,0106.rom               0x51000    optionrom    65536
    (empty)                        0x61080    null         648792
    bootblock                      0xff700    bootblock    1952

    Built google/parrot (Parrot)

# Contact

Website: https://equk.co.uk

Twitter: [@equilibriumuk](https://twitter.com/equilibriumuk)