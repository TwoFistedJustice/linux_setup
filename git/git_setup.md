Run these commands in git:

git config --global user.name "Your Name"
git config --global user.email "your_email@whatever.com"


in Linux environment
git config --global core.autocrlf input
git config --global core.safecrlf true


Add the following to the .gitconfig file in your $HOME directory.

file: .gitconfig
[alias]
co = checkout
ci = commit
st = status
br = branch
hist = log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short
type = cat-file -t
dump = cat-file -p

