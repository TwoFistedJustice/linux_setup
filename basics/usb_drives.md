#USB Drives in Linux

Rule #1 - USB drives in linux are secure because they suck by design.

## Commands to see/list USB drives
- `lsblk -p -o NAME,VENDOR,MODEL,SIZE,TYPE,SERIAL` - lists blocks because everything in linux is a file
- `lsusb` - lists usb stuff
- `fdisk -l` - lists drives - difficult to read


# [Bootable USB](https://linuxhint.com/create_bootable_linux_usb_flash_drive/)

Download **[Etcher](https://www.balena.io/etcher#download-etcher)**
- Etcher is an [Appimage](https://docs.appimage.org/introduction/quickstart.html#ref-quickstart) so you have to make it executable by going to properties and in the permissions tab selecting "is executable"
- It will need sudo and will silently pop up a permission window behind other windows. Go find it.



dd bs=4M if=/home/hoo/Downloads/kali-linux-2023.1a-installer-purple-amd64.iso of=/dev/sdc1 status=progress oflag=sync
dd bs=4M if=/home/hoo/Downloads/THE_FILE.iso of=/dev/sdX status=progress oflag=sync
- This made transferred the iso to a USB stick but it wasn't bootable




# Security
Use GtkHash (GUI) to check the check sum on the .iso
The green check mark means it's good. No check mark means it's bad.