# Repair Bad GPG Key that is blocking Docker Desktop

In importing my old /home folder to my new linux I made a boo boo.
The problem seems to be that I imported both:
- a key to which I had forgotten the password
- Docker Desktop settings

I need to re-run a backup which excludes the problem key and the problem docker settings.

My next backup /home should exclude:

.docker


Did I pull in my docker settings from before?
Look on old SSD is it there?

What I excluded:
Trash
Downloads
~/.snapshots
~/.cache
~/.java
~/.psensor
~/.pki
~/snap
~/.config/autostart
~/.config/autostart-scripts
~/.config/bleachbit
~/.config/Eqonomize
~/.config/fontconfig
~/.config/GIMP
~/.config/gtk-2.0
~/.config/gtk-3.0
~/.config/bus
~/.config/session
~/.config/vivaldi
~/FiraxisLive
~/Steam