LAMP stack for PHP development environment
==========================================

General information:
--------------------

This is the very basic Vagrant configuration to create a VM with LAMP stack on it accessible from the host machine.
By the end of the installation you will get:

  - VM running Ubuntu 13.04 (Raring Ringtail) 64-bit
  - Apache, PHP and MySQL

Database configuration for your project:

  - Database host: 10.0.50.11
  - Database name: website_db
  - Database user: website
  - Database pass: website

Installation instruction:
-------------------------
  (Be sure that ports 80, 2222 and 3306 are not being used on host machine. If they are you need to change VagrantFile)

  1. Download and install [VirtualBox][1]  -- tested with 4.2.18 on Windows 8
  2. Download and install [Vagrant][2]     -- tested with 1.3.1  on Windows 8
  3. Download source of this repository and place contents to the root of your project
  4. Navigate to the project root using terminal
  5. Run: > vagrant up
  (it will take a few minutes at least for first time)
  
  6. Run: > vagrant ssh (OR use a ssh client, like putty  to connect to: vagrant@127.0.0.1 -p2222  OR  vagrant@10.0.50.11
            User: vagrant
            Password: vagrant
  (check if you can connect to the machine)
  
  7. Install apache2, mysql and php(one time only):
      sudo su -
      (as root user)
      apt-get update
      apt-get install apache2 php5 php5-cli libapache2-mod-php5 php5-dev php5-mcrypt libapache2-mod-perl2
      apt-get install php5-cgi php5-cli php5-common php5-curl php5-dbg php5-dev php5-gd php5-gmp php5-ldap php5-mysql php5-pspell  php5-recode  php5-snmp  php5-sqlite  php5-tidy php5-xmlrpc  php5-xsl php5-adodb  php5-imap unzip php5-mhash php5-odbc curl libwww-perl imagemagick 
      apt-get install mysql-server mysql-client libapache2-mod-auth-mysql php5-mysql

      update-rc.d apache2 defaults
      update-rc.d mysql defaults

      service mysql restart
      service apache2 restart

      Go for the rest of this guide to configure php and mysql:
      http://www.ubuntugeek.com/install-sugarcrm-community-edition-in-ubuntu-810-server.html

      (further fine tunning might be needed)
  
  8. Add new line to your /etc/hosts file or c:\windows\system32\drivers\etc\hosts
     10.0.50.11 dev.local
  9. Open dev.local in your browser
  10. Check you can connect to the database on port 3306 on localhost
  
  [1]: https://www.virtualbox.org/wiki/Downloads
  [2]: http://downloads.vagrantup.com/
  [3]: https://www.virtualbox.org/
  [4]: http://www.vagrantup.com/


