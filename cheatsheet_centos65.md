<!---
```centos65

```
-->

#Cheatsheet CentOS 6.5

##General
Change keyboard to belgian
```centos65
loadkeys be-latin1
```
Allow incoming ssh connections on eth0
```centos65
iptables -A INPUT -i eth0 -p tcp --dport 22 -m state --state NEW,ESTABLISHED -j ACCEPT
```

ifup eth1 -> config not found

```centos65
Make a copy of the ifcfg-eth0 file and name it ifcfg-eth1
Open ifcfg-eth1 in a text editor (e.g. vi)
Update the DEVICE entry.
Update (or remove) the HWADDR entry
Remove the UUID entry (if it is there)
```

hostname -f returns "host unknown"

```centos65
add line to /etc/hosts
```
dhcpd: no subnet declaration

```centos65
add pool for an interface
```
dhcpd: Can't chown new lease file: Operation not permitted
```centos65
setenforce 0
service dhcpd start
setenforce 1
```

```centos65

```

```centos65

```

```centos65

```

```centos65

```