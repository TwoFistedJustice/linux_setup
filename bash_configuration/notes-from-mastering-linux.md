 # Configuration

p50 
Set the "noclobber" option to prevent the I/O stream from automatically overwriting files during output.
`set -o noclobber`
Or set it in .bash_profile

to expressly overwrite a file use `>|` (right arrow, pipe)
to append to file use `>>`

example: `ls >> filelist`

If noclobber is set, then the pipe must be used to overwrite. It can be used with or without noclobber set.
Best to build the habit of using it.

p 56
Set history size to 50 in .bash_profile

p63
`shopt` command to see bash options
`set` command to change bash options

p64
$CDPATH
For quick directory changes to frequently used dirs.
How to set $CDPATH:
Folders I should do:
repos
downloads
hoo
tardis




P67
Set the variable PROMPT_COMMAND to run some command to be executed before displaying the prompt
Why is that useful?

p67
Define a function (alias) `rm` which removes files to the Trash instead of just vaporizing them straightaway
less safe but still safer than default
`alias rm = "rm -i"`

p68
Change default file permissions so group and others cannot read your files
`umask 0077`




#Useful Aliases
alias dir="ls -l"
alias back=`cd $OLDPWD'





