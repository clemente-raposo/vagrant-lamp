VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--cpus", "1"]   
  end    

  config.vm.hostname = "dev01.local"

  config.vm.box = "raring64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/raring/current/raring-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.network :forwarded_port, guest: 80, host: 8080      #apache
  config.vm.network :forwarded_port, guest: 3306, host: 3306    # mysql  
  config.vm.network :private_network, ip: "10.0.50.11"

  #config.vm.synced_folder ".", "/vagrant", :nfs => true, :owner=> "www-data", :group=>"www-data"
  config.vm.synced_folder ".", "/var/www/sugar", :nfs => true, :owner=> "www-data", :group=>"www-data"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "init.pp"
    puppet.module_path    = "puppet/modules"
  end

end
