# Docker Problems

Docker == Problems 



```shell
$: kvm-ok
INFO: /dev/kvm exists
KVM acceleration can be used
```
If it says KVM is not supported by the CPU, it must be enabled in the BIOS security menu.



After transferring my SSD to my new laptop, docker stopped working.

I wonder if this is because I upgraded to 22.04?


Docker is installed but spins forever at startup

$ docker compose up -d
Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?


```shell
sudo systemctl start docker.service
```

Failed to start docker.service: Unit docker.service is masked.

Mask is like disabled with super powers. The service must be unmasked.

Verify that is [masked](https://askubuntu.com/questions/710420/why-are-some-systemd-services-in-the-masked-state): 
```shell
sudo systemctl list-unit-files | grep dock
```
expect:
```shell 
docker.service                                 masked          enabled
docker.socket                                  masked          enabled
```

unmask both and now they are just gone, no trace.

"masked" means there is a symlink in /etc/systemd/system -> /dev/null
meaning it goes nohwere. Unmasking means that symlink is deleted.
It does NOT mean that it is enabled or even exists.


```shell
$ kvm-ok
INFO: Your CPU does not support KVM extensions
INFO: For more detailed results, you should run this as root
HINT:   sudo /usr/sbin/kvm-ok
```


http://www.linux-kvm.org/page/Processor_support
http://www.linux-kvm.org/page/FAQ#Are_64bits_processors_supported_under_KVM.3F