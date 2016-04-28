#/etc/httpd/conf.d/05-foreman-ssl.conf

<VirtualHost *:443>
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
	SSLEngine on
	SSLCertificateFile      "/var/lib/puppet/ssl/certs/repo.dlc.accenture.com.pem"
	SSLCertificateKeyFile   "/var/lib/puppet/ssl/private_keys/repo.dlc.accenture.com.pem"
	SSLCertificateChainFile "/var/lib/puppet/ssl/certs/ca.pem"
	SSLCACertificatePath    "/etc/pki/tls/certs"
	SSLCACertificateFile    "/var/lib/puppet/ssl/certs/ca.pem"
	SSLCARevocationFile     "/var/lib/puppet/ssl/crl.pem"
	SSLVerifyClient         optional
	SSLVerifyDepth          3
	SSLOptions +StdEnvVars +ExportCertData

</VirtualHost>