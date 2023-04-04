- [UEFI info](https://www.kubuntuforums.net/showthread.php/73306-UEFI-GPT-ESP-GRUB2-EFI-dual-booting-fixing-things)

Create two usb keys using Rufus or other usb live creator
- gparted
- Linux distro (Kubuntu)

DO THIS BEFORE DOING ANYTHING ELSE AFTER THIS:
Open the computer hardware settings (BIOS like thing) and set it to use UEFI and NOT legacy.



See: [UEFI Simplified](https://www.kubuntuforums.net/showthread.php/43221-GRUB-2-A-Guide-for-Users/page15?p=379977&viewfull=1#post379977)

Partition the drives
Create a partion table of type GPT - make sure to tell gparted to do the thing before preceding

100 MB space preceding first partition

EFI partion - ~512MB but no less than 300MB - should be sda1 and FAT32
- in GParted set the boot flag on it (this marks it as the ESP or type EF00)
- Do this after creating the partitions, right click on it in gparted to set flags

The following should be ext4 or btrfs ( I use btrfs )
swap partition - a little bigger than the amount of RAM you have.
- right click on it after creation to designate it as swap
  /root - make it big enough to hold your distro and any programs at least 60GB
  /home - to hold all your docs and such - I make this small and then use another partition to hold my docs
  /storage - use this to hold docs


If the partitions are done correctly the Linux installer will recognize all the partitions and use them correctly. This will be easily determined by inspection.


[CLAYDOH]
your EFI notes are correct, ignoring the forum link and the "100 MB space preceding first partition" part.
biosgrub is totally unnecessary


Note you only need ~4gb of swap unless you use hibernation (suspend to disk), and have tested that it works.
[/CLAYDOH]

[jglen490 ]
The EFI partition can be done easily and correctly by selecting "ESP" as the filesystem, which then automatically sets the boot flag, partition name, and fat32. You can select the size of the ESP, and unless you have multiple OSes, it does not need to be large.
[/jglen490 ]

[OSHUNLUVR]
I would wipe the drive totally, create only 3 partitions as Claydoh suggest - EFI., install, and swap, and then install.
[\OSHUNLUVR]

Install Kubuntu

Install rEFInd from Muon
Install Krusader from Muon
Use Krusder in root mode (edit menu) to access /boot/efi/refind/refind.conf
Change timeout to 3 (or whatver you want)



 -[Mount storage drive according to post #2:](https://www.kubuntuforums.net/showthread.php/75105-Noob-ownership-question-copying-from-usb-drive-sdb1-to-sda6)

Unpack tarballs into
/opt for use by all users
/home/bin for single user



Install curl
Install NVM
Install Node LTS via NVM
Install Git
Configure Git
Install Webstorm
-import settings
Install Postman
Install Mongodb (from Muon)
Installl current Mongo tools



Kubuntu settings
Disable bluetooth by right clicking on the taskbar symbol and unchecking 'powered' in the window.
Turn off all sounds



Key Map
use xmodmap to change keyboard
xinput to fiddle with trackpad and such
xev to discover keymap

Alt_R is 0xffea
Menu (right-click, context) is 0xff67




