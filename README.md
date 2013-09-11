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
  * Be sure that ports 80, 2222 and 3306 are not being used on host machine !!!
  * If they are you need to change VagrantFile

  1. Download and install [VirtualBox][1]  -- tested with 4.2.18 on Windows 8
  2. Download and install [Vagrant][2]     -- tested with 1.3.1  on Windows 8
  3. Download source of this repository and place contents to the root of your project
  4. Navigate to the project root using terminal
  5. Run: > vagrant up --no-provision
  (it will take a few minutes at least for first time)
  
  6. Run: > vagrant ssh (OR use a ssh client, like putty  to connect to: vagrant@127.0.0.1 -p2222  OR  vagrant@10.0.50.11
            User: vagrant
            Password: vagrant
  (check if you can connect to the machine)
  
  7. Run: > vagrant provision    
  (to install mysql, apache and php)
  
  8. Add new line to your /etc/hosts file or c:\windows\system32\drivers\etc\hosts
     10.0.50.11 dev.local
  9. Open dev.local in your browser
  10. Check you can connect to the database on port 3306 on localhost
  
  [1]: https://www.virtualbox.org/wiki/Downloads
  [2]: http://downloads.vagrantup.com/
  [3]: https://www.virtualbox.org/
  [4]: http://www.vagrantup.com/
  


Troubleshooting:
----------------
I have tested with Vagrant 1.3.1, Virtual Box 4.2.18 on Windows 8 64bits host.

Q) The first boot (vagrant up) got a "Timed out while waiting for the machine to boot. (...)".
A) RUN: vagrant halt and the RUN: vagrant up --no-provision again. All should work well the second time.


