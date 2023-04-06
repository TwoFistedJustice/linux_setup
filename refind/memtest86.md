#memtest86
memtest86 lets you test your ram. Refind should detect it once it is installed and offer it as a second line option.

Summary: rEFInd will automatically detect and display memtest86 if it is installed on your machine accordingly: 


###To show memtest86 on the boot screen second row:
Start with an empty unformatted USB stick the make it bootable according to [Memtest86 user guide PDF](https://www.memtest86.com/downloads/MemTest86_User_Guide_UEFI.pdf) 

####Use Krusader in Root Mode (Tools Menu)
Copy the contents of `memtest86-usb-stick/EFI/BOOT/` to
- `boot/efi/EFI/tools/memtest86/`

##docs
from [rodsbooks.com](https://www.rodsbooks.com/refind/installing.html#addons)
Memtest86—This is a popular tool for performing basic hardware tests, and especially memory tests. rEFInd recognizes this program when it is stored in the EFI/tools, EFI/tools/memtest, EFI/tools/memtest86, EFI/memtest, or EFI/memtest86 directory, with a program filename of memtest86.efi, memtest86_x64.efi, memtest86x64.efi, or bootx64.efi. (Change x64 to ia32 on IA-32 systems.) Be sure to download the EFI version of the program. If you get the USB flash drive version, you should mount the flash drive's ESP (partition 2) and copy the EFI/BOOT directory to your own ESP's EFI/tools/memtest or other Memtest86 directory name, as just specified. rEFInd should then recognize it, provided the showtools line includes the memtest or memtest86 token.


[Showing memtest86 by config](https://www.rodsbooks.com/refind/configfile.html) (this is not necessary)



## Forum post answers by Rod Smith
[How to set up rEFInd to use memtest86](https://sourceforge.net/p/refind/discussion/general/thread/33e86fe0/)


Thanks for the heads-up on this! I've just added explicit support for it to rEFInd, encoding it as a second-row option. Copy the EFI/BOOT directory from the Memtest86 USB flash drive to EFI/tools/memtest86 or EFI/memtest86 on your ESP and rEFInd 0.7.3.6 should detect it and give you a second-row option to launch it. A 0.7.3.6 binary is available here, if you care to test it:

[dead download link](http://www.rodsbooks.com/refind-bin-0.7.3.6.zip)

The source code is in the git repository.

You will need to use Krusader in Root Mode (tool menu) to copy the boot/ folder







