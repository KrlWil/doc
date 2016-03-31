#Step by step PXE

1. set up pxelinux.cfg/default

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

2. mount iso
```
mount -o loop /root/CentOS-7-x86_64-Minimal-1511.iso /var/lib/tftpboot/centos7/
```
3. boot from lan
4. follow instructions