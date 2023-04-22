# Docker for Kubuntu 22.04

- [my Kubuntu Forums thread on all things Docker](https://www.kubuntuforums.net/forum/general/miscellaneous/miscellaneous-aa/664300-installing-docker-compose-on-kubuntu-or-any-ubuntu)
- [download Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Docker docs: Installing on Ubuntu](https://docs.docker.com/desktop/install/ubuntu/)


# Confusions:
- Docker Desktop and Docker Engine are different applications. For a dev environment you may only need Desktop.
- Do I need to install gnome-terminal on Kubuntu? - **?????????????????????????????**




#Steps as given by Docker Docs
Premise: The Docker installation docs for Linux are TERRIBLE.

Install gnome-terminal - ?? Necessary ???  


KVM supported
QEMU 5.2+
systemd


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
- install Docker Engine


#Questions to Answer
- how do I check which services are running?
- is qemu running all the time?
- how do I turn it off?
- The docs imply that DD runs in the background at startup, DOES IT???








#What happened:
Without performing any of the pre-requisite actions such as installing gnome-terminal I ran
`sudo apt-get update` and from within Downloads `sudo apt-get install ./docker-desktop-4.18.0-amd64.deb`

The result:

> Reading package lists... Done  
Building dependency tree... Done  
Reading state information... Done
Note, selecting 'docker-desktop' instead of './docker-desktop-4.18.0-amd64.deb'\
Some packages could not be installed. This may mean that you have\
requested an impossible situation or if you are using the unstable\
distribution that some required packages have not yet been created\
or been moved out of Incoming.\
The following information may help to resolve the situation:\
> 
> The following packages have unmet dependencies:\
docker-desktop : Depends: docker-ce-cli but it is not installable\
E: Unable to correct problems, you have held broken packages.

Nothing was installed

Now install `qemu-system` from Muon






-[tab1](https://www.kubuntuforums.net/forum/general/miscellaneous/miscellaneous-aa/664300-installing-docker-compose-on-kubuntu-or-any-ubuntu)
-[tab2](https://docs.docker.com/desktop/install/linux-install/)
-[tab3](https://docs.docker.com/desktop/install/ubuntu/)
-[tab4](https://docs.docker.com/desktop/faqs/linuxfaqs/#how-do-i-enable-file-sharing)







#KVM
Docker Desktop requires KVM support
The KVM module should load automatically but if it does not it can be loaded manually with:

`modprobe kvm`


# Packages to install via Muon
- `cpu-checker` -  required to run kvm-ok command
- `qemu-system` - KVM needs qemu-system-x86 on which qemu-system depends



#QEMU-SYSTEM
This will put a drag on your system and should be started and stopped manually as needed.


#Bash File for starting and stopping Docker and required services
# start qemu-service




