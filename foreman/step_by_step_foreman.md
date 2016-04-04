# Step-by-step CentOS 6.5 + Foreman

1. Install puppet
```
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
```

2. Install foreman release rpm
```
yum -y install epel-release http://yum.theforeman.org/releases/1.10/el6/x86_64/foreman-release.rpm```
```

3. Install foreman installer
`yum -y install foreman-installer`

4. Add line to etc/hosts

5. Run foreman installer
`foreman-installer`

5. `puppet agent --test`

6. go to foreman

7. install modules (forge.puppetlabs.com)

8. go to foreman gui

9. configure->classes-> import from ... -> prod+dev

10. hosts -> host.domain -> edit -> puppet classes -> tftp+xinetd+stdlib

10. Set selinux to permissive `setenforce 0`

11. Set up provisioning via `Infrastructure->Provisioning setup`

12. Run the specified command

13. Fill in remaining settings

14. `yum install foreman-vmware -y`

15. `service foreman restart´

16. Infrastructure -> Compute resources -> New compute resource

17. Fill in Vcenter/Server

18. Infrastructure -> Compute profiles -> New compute profile

19. Configure operating system with appropriate templates/partition table (Kickstarts for Centos)

20. Hosts -> new host
