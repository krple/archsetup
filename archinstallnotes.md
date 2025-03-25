Archinstall language: SKIP

Locales: SKIP

Mirrors: input country

disk configuration: use btrfs or ext4

disk encryption: optional (probably SKIP)

swap: SKIP

bootloader: SKIP

hostname: optional

root password: set

user account: set

profile **A**>type>**desktop**>i3-wm>**graphics driver**>nvidia (proprietary)>**greeter**>ly

PROFILE A INSTALLS: 
default dmenu htop i3-wm i3blocks i3lock i3status iwd lightdm lightdm-gtk-greeter nano openssh smartmontools vim wget wireless_tools wpa_supplicant xdg-utils xss-lock xterm dkms nvidia-dkms xorg-server xorg-xinit ly 

**DONT USE** profile **B**>type>**minimal**

audio: pipewire

kernels: SKIP

network configuration: use networkmanager

additional packages **A**: picom ufw firefox polybar kitty

**DONT USE** additional packages **B**: dmenu i3-wm i3lock polybar nano smartmontools iwd xss-lock kitty nvidia-dkms xorg-server ly firefox

opptional repos: SKIP

Timezone: set

automatic time sync: check

custom picom dmenu i3-wm polybar i3lock-color kitty xss-lock ufw iwd wpa_supplicant


Using wayland (sway, hyprland, etc.)? use polkit **not** seatd

TODO: replace i3lock with i3lock-color
