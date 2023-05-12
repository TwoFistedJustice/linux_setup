# Backing up with [Duplicity](https://duplicity.gitlab.io/)
- **[Duplicity Docs](https://duplicity.readthedocs.io/en/latest/)**

Deja Dup is the GUI for duplicity. In Kubuntu it called simply "backups"
It gives the option to include or exclude folders. But the interface is a bit clunky.




## Filesystem Locations for Duplicity and Deja Dup

/usr/libexec/deja-dup/ - folder containing a python script and a binary - nothing useful

/usr/bin/duplicity -- a python script - nothing in here about file locations
/usr/bin/deja-dup -- a binary

using dconf-editor I found, but can't find it in Dolphin
/org/gnome/deja-dup

The value C+P'd from dconf-editor
['/home/hoo/.local/share/Trash', '/home/hoo/.snapshots', '/home/hoo/.cache', '/home/hoo/.java', '/home/hoo/.psensor', '/home/hoo/.pki', '/home/hoo/snap', '/home/hoo/.config/autostart', '/home/hoo/.config/autostart-scripts', '/home/hoo/.config/bleachbit', '/home/hoo/.config/Eqonomize', '/home/hoo/.config/fontconfig', '/home/hoo/.config/GIMP', '/home/hoo/.config/gtk-2.0', '/home/hoo/.config/gtk-3.0', '/home/hoo/.config/ibus', '/home/hoo/.config/session', '/home/hoo/.config/vivaldi', '/home/hoo/FiraxisLive', '/home/hoo/Steam', '/home/hoo/.docker']

I can edit it in dconf-editor and it shows up in the application







