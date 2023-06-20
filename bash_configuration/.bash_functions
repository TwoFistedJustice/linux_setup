#!/bin/bash
# zsh-stats displays most commonly used commands
#https://wikimatze.de/show-the-most-common-used-terminal-commands/
function zsh-stats() {
  fc -l 1 | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n25
}

function cdl() {
 builtin cd "$1" ## call bash native cd function
 /bin/ls -la  ## then call ls -list all files
}
