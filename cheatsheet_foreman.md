<!---
```foreman

```
-->
Update Puppet
```foreman
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
```

Enable the EPEL (Extra Packages for Enterprise Linux) and the Foreman repos:
```foreman
yum -y install epel-release http://yum.theforeman.org/releases/1.10/el6/x86_64/foreman-release.rpm
```

Downloading the installer
```foreman
yum -y install foreman-installer
```

Running the installer
```foreman
foreman-installer
```

[optional] If installer fails on hostname
```foreman
add line to /etc/hosts
```