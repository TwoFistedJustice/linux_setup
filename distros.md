# Distro Notes

## Kali
Kali is for hackers. It comes with a bunch of tools, mostly command line, for hacking, defending, or sleuthing.

You can choose which desktop env you want at install. xFCE (default, Gnome, Plasma. Xfce is pretty barebones.

Pros:
it has an undercover mode which makes it look just like Win10 right down to the C: prompt.

Cons:
The installer doesn't seem to work with btrfs. It crashed every time I tried to use btrfs. It worked fine with ext4. I didn't see a package manager. It seems to be built by a for-profit information security company.


## Pop OS

It's a very slick looking desktop which has the look and feel of MacOS. It has auto tiling for open programs, which is not as useful as I'd hoped.

Pros:
Very easy to install. Has a lot of tasks such as installing .debs abstracted away. It has an app store with a lot of common Linux apps laid out in a nice-looking searchable icon format.

Cons:
All the extras make it **slow**. It doesn't seem to have a robust package manager such as Muon. There isn't an obvious power off button in software.


## Manjaro
Has a lot of options for desktops. But frankly isn't any more useful than Kubuntu and is less user friendly. It's not faster or lighter than Kubunutu either. It seems to have more geek-chic
apps that don't do much besides look geek-chic.

## Manjaro with i3
Default browser: Firefox
Fantastic installation options. Installer has a really helpful partitoner with lots of options that are easy to choose from, it will even make your existing system into a dual booter automagically.
You can choose between LibreOffice or FreeOffice.

Supposedly it has application tiling but since there's no application launcher, it's kind of a pita to use anything.

Package Manager is Pamac

Pros:
The USB flasher went really fast. 

Pros:
System resource usage widget on desktop by default. Has list of shortcuts on desktop.

Cons:
No application launcher? Right! No actual no actual GUI interface at all.It's a wallpaper and some non-interactive widgets. Seems like everything is terminal or keyboard commands.
Even open applications don't have a little 'x' in the corner to close them. 


## Manjaro: Cinnamon
Default browser: Vivaldi bloat browser :-(

It has a launcher that looks kind a like a ghetto WinXP launcher

While it has more interface in its interface than i3, it seems to be less capable in general than Kubuntu

## Manjaro: Budgie
Default browser: Firefox
Looks like stoic-Plasma. Takes 1.7Gb RAM. Has tiling which is contolled by CTL+ALT+Num key commands.

Shutdown is a teeny weeny little corner widget

## Manjaro: KDE
Default Browser: firefox
A lot like Kubuntu but not as user friendly. 1.5g ram
Can't find a package manager like Muon

## Slackware
No apparent advantage over Kubuntu
There are two passwords "live" and "root"
System usage: 1.6gb RAM
Desktop: Plasma - sort of
Mostly KDE with some Gnome tossed in randomly, for example Emacs AND Kate

For terminal it has: Xfce Terminal, Konsole, Yakuake, and XTerm


## Ubuntu - vanilla
System usage: 2.4gb RAM
Pretty but seems less configurable than Kubuntu, or at least not as user friendly.
Package manager looks to be what sits behind Muon abstraction layer. Muon seems to be a search engine on top of Ubuntu's software center.
It has a workspace slider rather than an "start" menu.
Power off button is harder to find, it's in the battery tray icon.
It has the option of using ZSF which is similar to btrfs, but not better unless you need infinite data storage capacity. But they don't make drives with infinite capacity yet.
I don't see any advantage over Kubuntu, but I do see some drawbacks.


## Gentoo
System usage: **1.3gb** RAM
Can't seem to activate bluetooth
Lower RAM usage may because various features are turned off. System Monitor shows a lot less than Kubuntu.
It's Portage package manager that the website brags about is not accessible. Or it's command line only via `emerge`.
No evident advantages over Kubuntu, several drawbacks.

## Mint: Cinnamon
System usage: **1.3gb** RAM
The basic Ubuntu disk partitioner SUCKS!!!! It really seems to try to prevent you from changing anything.
Trying to install Mint after straight Ubuntu was actually difficult unless I chose the automated default.
Default file system: ext4
Uses Synaptic package manager (Muon is easier to use). Synaptic's interface looks like it came out of Windows 3.1
No obvious support for keyboard shortcuts. There's an app to make them, but you can't actually add a custom key stroke to the shortcut.





## GhostBSD
Pretty spartan but seems to have everything important.
No /home
Def not the same as Linux. 
The autosearch in the "software center" package manager is wayyyy slower than Muon.
Jetbrains support: clion, phpstorm, webstorm. None of the other IDEs
VSCode -yes
Sublime - yes
Notepad++ - sort of

Cons:
Noticably slower than Kubuntu, mouse click accuracy way off

System usage: 3.1gb RAM **MEMORY HOG**

## FreeBSD
wants a login. Login not provided.

## NomadBSD
Downloads in a .lmza archive that must first be extracted.
Live set up failed. Error message said  that no root password had been set.
Subsequent attempts to reboot froze at "Mounting uzip image [/]"
I gave up after 3 failed attempts.





