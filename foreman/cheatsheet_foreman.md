<!---
```

```
-->

Update Puppet
```
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
```

Enable the EPEL (Extra Packages for Enterprise Linux) and the Foreman repos:
```
yum -y install epel-release http://yum.theforeman.org/releases/1.10/el6/x86_64/foreman-release.rpm
```

Downloading the installer
```
yum -y install foreman-installer
```

Running the installer
```
foreman-installer
```

If installer fails on hostname
```
add line to /etc/hosts
```

Install vmware provider
```
yum install foreman-vmware
```

Unable to delete dhcp lease

add` :dhcp_subnets: [192.168.101.0/255.255.255.0]`
to /etc/foreman-proxy/settings.d/dhcp.yml


unable to set dhcp entry
```
delete entry in /var/lib/dhcpd/dhcp.leases
restart dhcpd
```