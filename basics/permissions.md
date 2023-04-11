
[How Permissions work](https://www.redhat.com/sysadmin/linux-file-permissions-explained)

[More on permissions](https://www.mygreatlearning.com/bash/tutorials/file-system-and-file-permission)


# Ownership

Check ownership with `ls -l`

If a program such as dejadup can't write to a location it may be an ownership issue. This will NOT be explicit. If the owner is `root` try changing ownership to $USER with `sudo chown -R $USER $FILENAME`


