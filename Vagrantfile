Vagrant.configure("2") do |config|
  # config.vm.box = "kalilinux/rolling"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    vb.memory = "4096"
  end
  
  
  # $script = <<SCRIPT
  #   echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  #   echo 'eval "$(rbenv init -)"' >> ~/.bashrc
  #   source ~/.bashrc
  # SCRIPT

  
# todo:
# 1. chmod +x code_1.74.2-1671533413_amd64.deb
# 2. rbenv install
# 3. check without any provision - if there is ruby, rails
# 4. git save

# https://gist.github.com/creisor/e20f254a89070f46b91cc3e0c5cd18db
# https://martinfowler.com/articles/vagrant-chef-rbenv.html


  config.vm.define "kali" do |kali|
    kali.vm.box = "kalilinux/rolling"
    kali.vm.network "forwarded_port", guest: 80, host: 8800
    kali.vm.network "forwarded_port", guest: 3000, host: 3333
    
    kali.vm.provision :shell, path: "provision-go.sh"
    kali.vm.provision :shell, path: "provision-docker.sh"


    config.vm.provision "file", source: "install/code_1.74.2-1671533413_amd64.deb", destination: "~/code_1.74.2-1671533413_amd64.deb"

    kali.vm.provision "shell", path: "provision-install-vscode.sh"
  end

  # config.vm.define "metasploit" do |metasploit|
  #   metasploit.vm.box = "rapid7/metasploitable3-ub1404"
  #   metasploit.vm.box_version = "0.1.12-weekly"
  #   metasploit.vm.network "forwarded_port", guest: 80, host: 8080
  # end

  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end



# Vagrant.configure("2") do |config|
#   config.vm.box = "kalilinux/rolling"
#   config.vm.network "forwarded_port", guest: 80, host: 8080
#   config.vm.provision "shell", path: "provision-docker.sh"

#   config.vm.provider "virtualbox" do |vb|
#     # Display the VirtualBox GUI when booting the machine
#     vb.gui = true
#     vb.memory = "1024"
#   end

  
#   # config.vm.provision "shell", inline: <<-SHELL
#   #   apt-get update
#   #   apt-get install -y apache2
#   # SHELL
# end
