#Printers in Linux
Native Linux printer drivers **SUUUUUUUCK** and may work inconsistently.

Download the drivers from the manufacturer and use those.

When installing it will as if you will provide the URI. For a normal USB printer, answer "NO"

##[Brother Download Page for Kubuntu](https://support.brother.com/g/b/downloadhowto.aspx?c=us&lang=en&prod=hll2340dw_us_eu_as&os=128&dlid=dlf006893_000&flang=4&type3=625)
Step1. Download the tool.(linux-brprinter-installer-*.*.*-*.gz)

The tool will be downloaded into the default "Download" directory.
(The directory location varies depending on your Linux distribution.)
e.g. /home/(LoginName)/Download

Step2. Open a terminal window.

Step3. Go to the directory you downloaded the file to in the last step. By using the cd command.

e.g. cd Downloads

Step4. Enter this command to extract the downloaded file:

Command: gunzip linux-brprinter-installer-*.*.*-*.gz

e.g. gunzip linux-brprinter-installer-2.1.1-1.gz

Step5. Get superuser authorization with the "su" command or "sudo su" command.

Step6. Run the tool:

Command: bash linux-brprinter-installer-*.*.*-* Brother machine name
e.g. bash linux-brprinter-installer-2.1.1-1 MFC-J880DW

Step7. The driver installation will start. Follow the installation screen directions.


When you see the message "Will you specify the DeviceURI ?",

For USB Users: Choose N(No)
For Network Users: Choose Y(Yes) and DeviceURI number.

The install process may take some time. Please wait until it is complete.