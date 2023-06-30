# SSH / Firewall Configuration

## Set new default port for SSH

You may need to install ssh-server. Check your package manager to see if it's installed. If not, install it.

### [systemctl commands](https://www.digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-systemd-services-and-units)
Check if SSH is running
```shell
systemctl --type=service --state=running | grep ssh
```

If not start it:
```shell
sudo systemctl start ssh.service
```

Restart SSH
```shell
systemctl restart ssh 
```


###[Check which ports are in use:](https://www.cyberciti.biz/faq/unix-linux-check-if-port-is-in-use-command/)
```shell
sudo ss -tulpn | grep LISTEN
```







- [SSH configuration](https://askubuntu.com/questions/264046/how-to-run-the-ssh-server-on-a-port-other-than-22) is at `/etc/ssh/sshd_config`
To [change the default port](https://www.ionos.com/help/server-cloud-infrastructure/getting-started/important-security-information-for-your-server/changing-the-default-ssh-port/) edit sshd_config with sudo and nano
Note: there is also a file called ssh_config which looks very similar. Make sure to edit that is brought to by the letter 'd'!
```shell
sudo nano /etc/ssh/sshd_config 
```
Find "Port 22"
Change it to "Port n" where n is an unused port
Restart SSH



## [Open firewall to SSH port](https://www.cyberciti.biz/faq/how-to-configure-firewall-with-ufw-on-ubuntu-20-04-lts/)

If you have a static IP:
```shell
sudo ufw allow proto tcp from [incoming-ip] to [ip-of-receiving-computer] port [port you set up previously]
```




