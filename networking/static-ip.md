# Setting up a static IP in Kubuntu 22

### Useful URLs

[Check which ports are open:](https://www.cyberciti.biz/faq/unix-linux-check-if-port-is-in-use-command/)



[Many commands and how to use](https://www.cyberciti.biz/faq/unix-linux-check-if-port-is-in-use-command/)


[Control UFW by CLI](https://www.cyberciti.biz/faq/how-to-configure-firewall-with-ufw-on-ubuntu-20-04-lts/)



[Using Network Manager CLI to set up static IP](https://linux.fernandocejas.com/docs/how-to/set-static-ip-address)


### What you will need
- The UUID of the LAN connection on your computer
- Your IP on the LAN
- The subnet on the LAN
- The Gateway address of the LAN
- DNS server address for the LAN


### To get your IP
`$ hostname -I` \


### to get your subnet
`$ ifconfig` \
Look for your IP, subnet follows, looks like 255.255.255.0
Count the quantity of 255
Multiply the quantity by 8
your subnet is forward slash that number
in this example:
3 x 8 = 24
subnet = /24

### to get the LAN gateway address
`$ ip r | grep default` \
looks like:
default via 192.168.62.1 dev wlp4s0 proto dhcp metric 600

The gateway in this example is: 192.168.62.1

### to get the DNS address for the LAN
Not sure. try 1.1.1.1

`$ resolvectl status` \
pulls up the DNS you are using on the www

`$ cat /etc/resolv.conf` \
shows your computer's dns



## [Setting the static IP address](https://linux.fernandocejas.com/docs/how-to/set-static-ip-address)
- Note: the values in this section are all made-up example values and may not work IRL. You have to find your own actual values.

**get the UUID** \
`$ nmcli connection show `
or
`$ nmcli con show `
```shell
NAME                  UUID                                  TYPE      DEVICE
Home-wifi             egd6cdd8-8ewd-8bf8-a0fd-cjkhkiu34f1e  wifi      wlp3s0
Starbucks WiFi        24181ab4-6f1d-446b-a350-f6b123xyzu94  wifi      --          
Wired connection 1    b92e3a8a-d798-3bff-ae0d-9f1abc123ea4  ethernet  --     
```

The basic command syntax is the same for each step, may require sudo \
```shell
 nmcli con modify [UUID] ipv4.[name of thing you want to change] [value you want to set]
 ```
- "con" is short for "connection" - either will work. I show "connection" below to make it easier to read and remember

In this case I will set a static IP for my home wifi.
I want a static IP address of **192.168.69.007** (because I'm really a British super-spy)

**set IP address AND /_subnet mask_** \
`$ nmcli connection modify egd6cdd8-8ewd-8bf8-a0fd-cjkhkiu34f1e ipv4.addresses 192.168.69.007/24`


**set Gateway address** \
`$ sudo nmcli connection modify egd6cdd8-8ewd-8bf8-a0fd-cjkhkiu34f1e ipv4.gateway 192.168.1.1`

**set DNS** \
`$ sudo nmcli connection modify egd6cdd8-8ewd-8bf8-a0fd-cjkhkiu34f1e ipv4.dns 1.1.1.1`

**set Method** \
`$ sudo nmcli connection modify egd6cdd8-8ewd-8bf8-a0fd-cjkhkiu34f1e ipv4.method manual`
- Note: "manual" is the actual value you want for a static ip.

**Activate the connection** \
`$ sudo nmcli connection up [UUID]`

**Check your work** \
`$ sudo cat /etc/NetworkManager/system-connections/[network name].nmconnection `