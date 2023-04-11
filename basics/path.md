# Path Operations


`pwd`  See current working directory 


### see the path
`echo $PATH`


### add to the path
add the line `export PATH=$PATH:/place/with/the/file` to the appropriate file that will be read when
your shell launches. There are a few different places where you could conceivably set the variable name: potentially 
in a file called `~/.bash_profile`, `~/.bashrc`, or `~/.profile`. The difference between these files is (primarily) when
they get read by the shell. If you're not sure where to put it, `~/.bashrc` is a good choice.


### remove from the path




/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin


## Locations where PATH is stored/set in my Kubuntu 20.04

`/etc/environment`
- a file containing a list of unique assignments. Perfect for adding system-wide directories.
`PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"`
referenced at `UNKNOWN`

`/etc/profile.d/apps-bin-path.sh`
- Checks if `/snap/bin` is in $PATH, adds it if not present
- Also modified `XDG_DATA_DIRS` which is a path-like variable
Referenced from:`/etc/profile - a file which contains the system-wide .profile file for the Bourne shell (sh(1))


`/etc/bash.bashrc`
- a file containing system-wide .bashrc file for interactive bash(1) shells.
- "This is a poor choice because it is single shell specific."

#LINKS
-[Stack Overflow: Where is PATH variable set in Ubuntu? ](https://stackoverflow.com/questions/37676849/where-is-path-variable-set-in-ubuntu)
