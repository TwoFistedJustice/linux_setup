# find and look stuff up
alias finder="find . -name"
#find a command in the history file that has the characters you specify
alias histg="history | grep"

#useful command shortcuts
alias myip="curl http://ipecho.net/plain; echo"

alias reload="source $HOME/.bashrc"

# cd
alias ..="cd .."
alias cdr="cd /"
alias cdu="cd ~"


# feline aliases
alias bat="batcat"
alias mancat="man batcat"
alias batrc="batcat $HOME/.bashrc"
alias catrc="cat $HOME/.bashrc"



# replace standard commands
alias df="pydf"

# to display system configurations
alias path="echo $PATH"

# for built in shell commands
alias h="help"

#dates
alias now='date +"  %-I:%M %P%n%A %-m/%d/%y"'


#env variable shortcuts
#commented out, find out what current variables are called and modify
#Samsung 23"
alias mon2="xrandr --output DP-2-2 --rotate"
#HP 19"
alias mon3="xrandr --output DP-2-3 --rotate"



#git shortcuts
alias gits="git status"
alias gdif="git status -v -v"
alias git.="git add ."
alias gitm="git commit -m"
alias gitam="git commit -am"
alias ghist="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"


#https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html
