# Docker for Kubuntu 22.04

- [my Kubuntu Forums thread on all things Docker](https://www.kubuntuforums.net/forum/general/miscellaneous/miscellaneous-aa/664300-installing-docker-compose-on-kubuntu-or-any-ubuntu)
- [download Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Docker docs: Installing on Ubuntu](https://docs.docker.com/desktop/install/ubuntu/)


### To Download Docker
 - be signed in
 - it looks like a download button but it's really a breadcrumb. Follow the breadcrumbs.



# Confusions:
- Docker Desktop and Docker Engine are different applications. For a dev environment you may only need Desktop.
- Do I need to install gnome-terminal on Kubuntu? - **NO**
- I can get docker to start, but docker.service appears to not even exist. 

#Steps as given by Docker Docs
Premise: The Docker installation docs for Linux are TERRIBLE.

KVM supported
QEMU 5.2+
systemd


# Docker Compose
It is not necessary to install docker-compose if you install Docker Desktop. DD comes with "docker compose" built in. Note the only difference in the syntax is that you can now omit the dash.


#Actual Way to Install Docker Desktop:
1. Download the .deb file
2. Inside Muon install qemu-system
3. [Follow the steps on the SO answer by 4r7if3x](https://stackoverflow.com/questions/72299444/docker-desktop-doesnt-install-saying-docker-ce-cli-not-installable)
The steps given are as follows:
>sudo apt install -y ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update -y

>sudo apt install ./docker-desktop-\<version\>-\<arch\>.deb


## What you do NOT need to do:
- install gnome-terminal
- install Docker Engine (if it seems to search forever for Engine, it means you need to start the docker service)


#Questions to Answer
- how do I check which services are running?
`systemctl --type=service`

- is qemu running all the time? - **YES**
- how do I turn it off?
-The docs imply that DD runs in the background at startup, DOES IT??? **not yet**


-[tab1](https://www.kubuntuforums.net/forum/general/miscellaneous/miscellaneous-aa/664300-installing-docker-compose-on-kubuntu-or-any-ubuntu)
-[tab2](https://docs.docker.com/desktop/install/linux-install/)
-[tab3](https://docs.docker.com/desktop/install/ubuntu/)
-[tab4](https://docs.docker.com/desktop/faqs/linuxfaqs/#how-do-i-enable-file-sharing)



#KVM
Docker Desktop requires KVM support
The KVM module should load automatically but if it does not it can be loaded manually with:

`sudo modprobe -v kvm`


# Packages to install via Muon
- `cpu-checker` -  required to run kvm-ok command
- `qemu-system` - KVM needs qemu-system-x86 on which qemu-system depends



#QEMU-SYSTEM
This will put a drag on your system and should be started and stopped manually as needed.


#Bash File for starting and stopping Docker and required services
# start qemu-service
# start docker service




