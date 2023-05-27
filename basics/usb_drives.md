#USB Drives in Linux

Rule #1 - USB drives in linux are secure because they suck by design.

## Commands to see/list USB drives
- `lsblk -p -o NAME,VENDOR,MODEL,SIZE,TYPE,SERIAL` - lists blocks because everything in linux is a file
- `lsusb` - lists usb stuff
- `fdisk -l` - lists drives - difficult to read


# Bootable USB

Download **[Etcher](https://www.balena.io/etcher#download-etcher)**
- Etcher is an [Appimage](https://docs.appimage.org/introduction/quickstart.html#ref-quickstart) so you have to make it executable by going to properties and in the permissions tab selecting "is executable"
- It will need sudo and will silently pop up a permission window behind other windows. Go find it.



