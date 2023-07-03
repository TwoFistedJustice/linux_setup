# [Multi Booting 2+ Linux Distros From a Single BTRFS Partition](https://www.kubuntuforums.net/forum/general/miscellaneous/btrfs/54261-more-btrfs-fun-multibooting-to-subvolumes-on-the-same-partition?highlight=multibooting+btrfs)

## Basics:
- Use one big BTRFS partition
- Rename @ and @home to something like @_distroName and @home_distroName
- Don't share /home, it will cause problems with different distros overriding settings
- Do use Refind Boot Manager
- 

## Properties
- each distro has its own /boot directory inside /
- 
## [Kali](https://www.kali.org/docs/installation/dual-boot-kali-with-linux/)
 - At least 30 gb
 - has big problems with bluetooth. 





### New (propsed) Criteria:
- ESP parition - fat32
- Swap partition
- One BIG BTRFS partition for the remainder
- Refind boot manager

On the BIG-BTRFS partition
- Kubuntu with @kubuntu and @kubuntu_home
- Kali with @cali and @cali_home

Question:

- run  a live usb instance
- the distros will be in /media/
- mv the directories and change etc/fstab to match
- You also have to update grub/refind
  -- in  /media/distro-name/@name/boot/grub/grub.cfg
- -- in the new install, edit /boot/grub/grub.cfg to match
Below line 180 the lines starting with "Linux" and "initrd"
- update /boot/grub/40_custom


The Config Files that Require Editing
- /boot/grub/grub.cfg 
- /etc/grub.d/40_custom
- /etc/fstab




1. Boot with live and rename @ and @home
2. Edit fstab to match new names
3. Edit /boot/grub/grub.cfg
4. Edit 40_custom
5. boot into system and run `update-grub`


### [40_Custom Text](https://www.kubuntuforums.net/forum/general/miscellaneous/coding-scripting/54126-make-maintaining-grub-easier-for-multi-booters-a-how-to?60180-Make-maintaining-GRUB-easier-for-multi-booters-a-quot-How-To-quot=) for Kubuntu22 on the only SSD

```shell
menuentry 'MENU_ENTRY' {
  insmod btrfs
  set root='(hd0,Kubuntu22)'
  configfile /boot/grub/grub.cfg
}

```

