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
