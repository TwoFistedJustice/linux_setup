#Creating Shortcuts

Right clik on the Start Menu
Choose "Edit Applications"



## Shutdown Shortcuts
Create a new submenu called "Shutdown"
Create new items according to the table

| Shortcut | Command | Current Shortcut Key |
| --- | --- | --- |
| **Poweroff** | qdbus org.kde.ksmserver /KSMServer org.kde.KSMServerInterface.logout 0 2 3 | CTRL + ALT + U
| **Restart** | qdbus org.kde.ksmserver /KSMServer org.kde.KSMServerInterface.logout 0 1 3 | CTRL + ALT + R
| **Rotate Screen 2 Left** | xrandr --output DP-2-3 --rotate left| Meta + Num + 8|
| **Rotate Screen 2 Landscape** | xrandr --output DP-2-3 --rotate normal | Meta + Num + 4|


#Application Shortcuts
| Group | Shortcut | Workpath | Command | Run in terminal | Current Shortcut Key |
|--- | --- | --- |---| --- | --- |
|Guitars | 
| | DIY Layout Creator | /home/hoo/bin/diylc | sh run.sh | true | none |
|Development|
| | Webstorm | | /home/hoo/bin/WebStorm/bin/webstorm.sh | | Meta + W |
|Internet |
| | Chromium | | | | Meta + I |
| | Firefox | | | | Meta + F |
| Office |
| | Calc | | | | Meta + X |
| | | | | | |
| | | | | | |
| System |
| | Konsole| | | | Meta + K|
| | Dolphin| | | | Meta + E|
| | Muon | | | | Meta + M|
| Utilities |
| | Kate | | | | Meta + T |
| | KCalc | | | | Meta + |

