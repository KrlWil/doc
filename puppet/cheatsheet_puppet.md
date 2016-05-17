<!---
```

```
-->

Test puppet agent
```
puppet agent --test
```

Install puppet module
```
puppet module install
```

Search puppet module
```
puppet module search tftp
```

Run of Puppet configuration client already in progress; skipping
```
puppetd --enable
```

Trust Puppet CA
```
copy /var/lib/puppet/ssl/certs/ca.pem  to /var/lib/foreman/public/ca.crt and install in Trusted Root Certification authorities
```

invalid method "..."
```
Check if right puppet package is installed
```