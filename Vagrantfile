# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
    12.times do |n|
      config.vm.define "vm#{n + 1}" do |cc|
      # config.vbguest.auto_update = false
      #cc.vm.box = "ubuntu/jellyfish64"
      cc.vm.box = "ubuntu/focal64"
      #cc.vm.box = "ubuntu/bionic64"
      #cc.vm.box = "boxomatic/debian-10"
      #cc.vm.box = "boxomatic/debian-9"
      #cc.vm.box = "bento/centos-8.4"
      #cc.vm.box = "bento/centos-7.9" -- useless due to repo problem. use vbox
      #cc.vm.box = "SLES-15-SP3"
      #cc.vm.box = "opensuse/Leap-15.4.x86_64"

      # cc.disksize.size = '22GB'
      # cc.vm.box = "marcv81/xenial64"
      # cc.vm.box_url = "https://vagrantcloud.com/jkyle/boxes/centos-7.0-x86_64/versions/1.1/"
      # cc.vm.host_name = "n#{n + 1}"
      #cc.vm.host_name = 'kvm10.kaitoserver.es'
      cc.vm.host_name = "kvm#{n + 1}"
      cc.vm.network :forwarded_port, guest: 80, host: "80#{n}".to_i, auto_correct: true
      #cc.vm.network :private_network, ip: "10.10.10.1#{n}"
      cc.vm.network :private_network, ip: "192.168.56.#{n}"
#cc.vm.network :public_network,  ip: "192.168.1.1#{n}"
      cc.vm.network :public_network,  ip: "192.168.1.10#{n}"
      # config.vbguest.auto_update = false
      config.vm.provider :virtualbox do |vb|
      #  vb.customize ["modifyvm", :id, "--memory", "8192"]
        vb.customize ["modifyvm", :id, "--memory", "2548"]
        vb.customize ["modifyvm", :id, "--audio", "none", "--usb", "on", "--usbehci", "off"]
      end
      cc.vm.synced_folder "/home/alvaro/Documentos/", "/vagrant", id: "vagrant-root", :owner => "vagrant", :group => "vagrant"
      config.vm.provision "shell", path: "setup-ssh.sh"
    end
  end
  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  # config.vm.box_url = "http://domain.com/path/to/above.box"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network :forwarded_port, guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network :private_network, ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network :public_network

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  # config.ssh.forward_agent = true

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider :virtualbox do |vb|
  #   # Don't boot with headless mode
  #   vb.gui = true
  #
  #   # Use VBoxManage to customize the VM. For example to change memory:
  #   vb.customize ["modifyvm", :id, "--memory", "1024"]
  # end
  #
  # View the documentation for the provider you're using for more
  # information on available options.

  # Enable provisioning with Puppet stand alone.  Puppet manifests
  # are contained in a directory path relative to this Vagrantfile.
  # You will need to create the manifests directory and a manifest in
  # the file ..pp in the manifests_path directory.
  #
  # An example Puppet manifest to provision the message of the day:
  #
  # # group { "puppet":
  # #   ensure => "present",
  # # }
  # #
  # # File { owner => 0, group => 0, mode => 0644 }
  # #
  # # file { '/etc/motd':
  # #   content => "Welcome to your Vagrant-built virtual machine!
  # #               Managed by Puppet.\n"
  # # }
  #
  # config.vm.provision :puppet do |puppet|
  #   puppet.manifests_path = "manifests"
  #   puppet.manifest_file  = "site.pp"
  # end

  # Enable provisioning with chef solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding
  # some recipes and/or roles.
  #
  # config.vm.provision :chef_solo do |chef|
  #   chef.cookbooks_path = "../my-recipes/cookbooks"
  #   chef.roles_path = "../my-recipes/roles"
  #   chef.data_bags_path = "../my-recipes/data_bags"
  #   chef.add_recipe "mysql"
  #   chef.add_role "web"
  #
  #   # You may also specify custom JSON attributes:
  #   chef.json = { :mysql_password => "foo" }
  # end

  # Enable provisioning with chef server, specifying the chef server URL,
  # and the path to the validation key (relative to this Vagrantfile).
  #
  # The Opscode Platform uses HTTPS. Substitute your organization for
  # ORGNAME in the URL and validation key.
  #
  # If you have your own Chef Server, use the appropriate URL, which may be
  # HTTP instead of HTTPS depending on your configuration. Also change the
  # validation key to validation.pem.
  #
  # config.vm.provision :chef_client do |chef|
  #   chef.chef_server_url = "https://api.opscode.com/organizations/ORGNAME"
  #   chef.validation_key_path = "ORGNAME-validator.pem"
  # end
  #
  # If you're using the Opscode platform, your validator client is
  # ORGNAME-validator, replacing ORGNAME with your organization name.
  #
  # If you have your own Chef Server, the default validation client name is
  # chef-validator, unless you changed the configuration.
  #
  #   chef.validation_client_name = "ORGNAME-validator"
end
