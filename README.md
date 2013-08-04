LAMP stack for PHP development environment
==========================================

General information:
--------------------

This is the very basic Vagrant configuration to create a VM with LAMP stack on it accessible from the host machine.
By the end of the installation you will get:

  - VM running Ubuntu 13.04 (Raring Ringtail) 64-bit
  - Apache, PHP and MySQL

Database configuration for your project:

  - Database host: 192.168.33.10
  - Database name: website_db
  - Database user: website
  - Database pass: website

Installation instruction:
-------------------------

  1. Download and install [VirtualBox][1]
  2. Download and install [Vagrant][2]
  3. Download source of this repository and place contents to the root of your project
  4. Navigate to the project root using terminal
  5. Run: > vagrant up
  6. Add new line to your /etc/hosts file:
     192.168.33.10 local.website.dev
  7. Open local.website.dev in your browser

  [1]: https://www.virtualbox.org/
  [2]: http://www.vagrantup.com/