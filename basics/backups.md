# Backups
It looks like my scheduled backups all stopped working quite some time ago. Or maybe I turned them off or failed to set them up in the first place.

Figure out how I set it up
Then re-backup important stuff

rsync tardis to simple-backup


## [Timeshift](https://github.com/teejee2008/timeshift)




##dejadup

Dejadup relies on **[Duplicity](https://duplicity.gitlab.io/)**
Permissions will be an issue. I change the destination ownership to $USER and then it works.




#[rsync](https://ss64.com/bash/rsync.html)


`rsync -rlv /home/hoo/tardis/ /media/hoo/simple-backup/`

 - -r recursive
 - -l copy symlinks as symlinks (as opposed to following them and copying the target file)
 - -v verbose