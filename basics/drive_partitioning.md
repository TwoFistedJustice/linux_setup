# [Setting up a new SSD](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/installation_guide/s2-diskpartrecommend-x86)
Red Hat has a really good basic summary.


Boot from a Gparted or similar USB stick

[Part 1: Use Gparted](https://help.ubuntu.com/community/ManualFullSystemEncryption/DetailedProcessPartition)
1. Set up a `GPT` partition table for the whole drive.
2. Set up a ESP 

```yaml
create-as: primary partition
name: EFI System Partition
file-system: fat32
label: ESP
```
3. That's it for that site. The rest of the tutorial appears to be superfluous.
Part 2: Use Kubuntu Installer 
4. Tell it to use the EFI as EFI
5. Make a swap
6. Set a BTRFS partition as /




## [LVM](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/installation_guide/sn-partitioning-lvm)
- Should be enabled.
Logical Volume Management makes it possible to change partition sizes on the fly.


## Partitions to set up:

| Designation | Type           | Mount Point | Size | Reason
| ------------------- | --------------- | ----------- | ------------------- |  ------------------- |
| /dev/sda1 | fat32 | /boot/efi | 550.00 MiB | boot partition
| /dev\/sda2 | linuxswap | none | 48 GiB | 1.5x RAM capacity - btrfs needs this to enable sleep
| /dev/sda3 | btrfs | / | 70% of total capactiy | btrfs can create new subvolumes within this 
| unallocated | unknown | - | remainder | to enable btrfs to expand and do magic



## [About Boot Partition](https://www.baeldung.com/linux/boot-partition-necessary)
To use LVM you must have a /boot partition. So use a /boot
[File system: FAT32](https://www.rodsbooks.com/efi-bootloaders/principles.html - Rod's Books (under EFI Disk Structures) suggests using FAT32 because EFI requires it.
He also suggests a size of 550mb to avoid some "mysterious errors"





## About [Swap Space](https://opensource.com/article/18/9/swap-space-linux-systems) and [Swap Partitions](https://www.makeuseof.com/tag/swap-partition/)
Swap files are more flexible but add unnecessary complexity and are slower than swap partitions.
Swap files NOT recommended for BTRFS as it prevents snapshots from working. (can't snapshot a subv containing a swap space) 
**Partitions should be preferred.**

"swappiness" is the % of RAM left unused when a swap space kicks in. So if swappiness is set to 60, it means that when RAM utilization
reaches 40% the system begins using swap space. This can lead to system lag and slow shutdowns since the swap space has to be emptied.
It also wears out SSDs faster.

Linux defaults to a swappiness of 60.
Set swappiness to 20.
```shell
sudo sysctl vm.swappiness=20
```

### [Sharing a /home folder or similar](https://unix.stackexchange.com/questions/6344/different-linux-distros-sharing-the-same-home-folder)
- keep /home lightweight - config files and such
- keep all my files and programs on "/data" 






#Drive Partitions 250GB

| Designation | Type           | Mount Point | Size /
| ------------------- | --------------- | ----------- | ------------------- | 
| /dev/sda1 | fat32 | /boot/efi | 287.00 MiB |
| /dev\/sda2 | linuxswap | none | 21.48 GiB |
| /dev/sda3 | btrfs | / | 216.71 GiB |
| unallocated | unknown | - | 1.32 MiB |

#Drive Partitions 1TB

| Designation | Type           | Mount Point | Size /
| ------------------- | --------------- | ----------- | ------------------- | 
| /dev/sda1 | fat32 | /boot/efi | 287.00 MiB |
| /dev\/sda2 | linuxswap | none | 50 GiB |
| /dev/sda3 | btrfs | / | The rest GiB |
| unallocated | unknown | - | xxx MiB |


## Personal File Storage
/home/$USER/$DRIVE_NAME
- SEE backup.md


## Using BTRFS to Advantage
This is laymen speak and may not be technically correct. But it should get the gist.

btrfs doesn't use "partitions" the way NTFS does. It uses fancy filetrees. Instead of partitions, we create subvolumes, which is a filetree independent of other filetrees.
So instead of /root/home/data , which we **could** have under the subvolume root. [We can make new subvolumes:](https://askubuntu.com/questions/331233/creating-btrfs-subvolume-like-or-home)
/root
/home
/data
all indepdendent of one another, all mounted by the OS

We can make a separate /@data directory under as a subvolume:
We will need the UUID of btrfs.
/etc/fstab will have it listed once for each for @ and @home

Login in as root
```shell
user@box:~$ sudo su -
root@box:~# mkdir /mnt/btrfs
root@box:~# mount UUID=[UUID Of btrfs] /mnt/btrfs
root@box:~# ls /mnt/btrfs
`@  @home`
root@box:~# btrfs subvolume create /mnt/btrfs/@data
Create subvolume '/mnt/btrfs/@data'
```

Now we need to add an entry in fstab
```shell
user@box:~$ sudo nano /etc/fstab
```
add in:

```shell
UUID=[UUID Of btrfs] /data  btrfs  defaults,subvol=@data 0 2
```
Then reboot. @data will exist in root. BUT, you won't be able to use it till you take ownership.

Open a terminal and cd to /data
sudo make a new directory, call it whatever you want.
user@box:~$ sudo chown -Rv $USER ./New_Directory/


# to keep the home folder intact
https://askubuntu.com/questions/1276281/does-ubuntu-installer-preserve-btrfs-home-subvolume-while-installing-to-the

manually delete individual contents of @ to avoid losing stuff you want to keep.






 


