# Step-by-step CentOS 6.5 + Foreman + PXE

```
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm

```

```
yum -y install epel-release http://yum.theforeman.org/releases/1.10/el6/x86_64/foreman-release.rpm

```

```
yum -y install foreman-installer

```
- add line to /etc/hosts

```
foreman-installer
```
-  go to foreman
- install modules (forge.puppetlabs.com)

```
puppet module install theforeman-dhcp
```

```
puppet module install puppetlabs-tftp
```
- go to foreman gui
- configure->classes-> import from ... -> prod+dev
- hosts -> foreman.localdomain -> edit -> puppet classes -> +dhcp+tftp+xinetd+stdlib
- configure->classes-> dhcp -> smart class parameter
- interface
```
eth0
```
pools
```
foreman.localdomain:
  network: 172.18.0.0
  mask: 255.255.0.0
  range: 172 18.5.100 172.18.5.102
  gateway: 172.18.1.10
```
pxefilename
```
pxelinux.0
```
pxeserver
```
172.18.1.10
```
configure->classes-> dhcp -> smart class parameter
address
```
172.18.1.10
```
directory
```
/var/lib/tftpboot
```



* * *
```
setenforce 0
puppet agent --test


```
pxelinux.cfg/default
```
default menu.c32
prompt 0
timeout 300
ONTIMEOUT local
menu title ########## PXE Boot Menu ##########
label 1
menu label ^1) Install CentOS 7
kernel centos7/images/pxeboot/vmlinuz
append initrd=centos7/images/pxeboot/initrd.img method=http://172.20.1.185/centos7 devfs=nomount
label 2
menu label ^2) Boot from local drive localboot
```

```
mount -o loop /root/CentOS-7-x86_64-Minimal-1511.iso /var/lib/tftpboot/centos7/

```

- Boot from lan and follow instructions