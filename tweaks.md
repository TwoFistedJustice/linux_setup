

#Monitors
-[Multi Monitor](https://www.kubuntuforums.net/forum/currently-supported-releases/kubuntu-20-04-focal-fossa-lts/post-installation/72639-can-i-assign-an-alias-to-a-environment-variable)


#Monitor Blacking out:
 - Make sure the Linux refresh rate matches the monitor refresh rate 


# [Swappiness](https://www.makeuseof.com/tag/swap-partition/)
Set swappiness to 20.
Linux default = 60.
Setting located at
`/proc/sys/vm/swappiness`
Modify it using `sysctl` (not the same as `systemctl`)


```shell
sudo sysctl vm.swappiness=20
```
For explanation see basics/drive_partitioning.md