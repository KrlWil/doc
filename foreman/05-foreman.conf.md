#/etc/httpd/conf.d/05-foreman.conf

<VirtualHost *:80>
    DocumentRoot "/var/www/centos"
    ServerName repo.dlc.accenture.com
	ServerAlias www.repo.dlc.accenture.com
	
    <Directory "/var/www/centos">
       Options Indexes
       AllowOverride All
       Order deny,allow
       Allow from all
   </Directory>

    # Other directives here
</VirtualHost>