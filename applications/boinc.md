# BOINC

Boinc docs are accurate but badly organized.

In Kubuntu 22.04 Boinc does not start automatically even though in vanilla Ubuntu it should.

How to start it:
Open terminal

/etc/init.d/boinc-client start
- you have to enter the whole thing in terminal. If you go to the directory and try to run it from there it doesn't work.

I created a shortcut in the start menu for this.

[Boinc Docs for Linux](https://boinc.berkeley.edu/wiki/Stop_or_start_BOINC_daemon_after_boot)



# Installing:
Do it from Muon
The installation creates a new Group called "Boinc"

After installation you have to [add $USER to the Boinc Group](https://boinc.berkeley.edu/wiki/Stop_or_start_BOINC_daemon_after_boot)

`sudo usermod -a -G Boinc $USER`

Then you must log off and log on to make it all work.

# Getting Work to Do
Most of the projects seem to be either not-maintained or poorly maintained.
Except for [World Community Grid](https://www.worldcommunitygrid.org/) which is owned and maintained by IBM.

You must create an account at each project with email and password. Then provide that login to Boinc Manager.

# Settings
[World Community Grid](https://www.worldcommunitygrid.org/) has their own settings they can import into your manager. These seem pretty reasonable except for the CPU time which will melt your laptop.

## CPU Allotment
I changed my CPU usage limits to CPUs: 70% CPU-Time: 80% - This still gets a lot done and doesn't overheat my Thinkpad.

# Memory Allotment
I changed mine to:
- When computer is in use: 50%
- When computer is not in use: 75%

It barely registers in my memory footprint. So these settings may be superfluous.

