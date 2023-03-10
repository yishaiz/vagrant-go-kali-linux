Vagrant.configure("2") do |config|
  # config.vm.box = "kalilinux/rolling"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    vb.memory = "4096"
  end
  
  config.vm.define "kali" do |kali|
    kali.vm.box = "kalilinux/rolling"
    kali.vm.network "forwarded_port", guest: 80, host: 8800
    kali.vm.network "forwarded_port", guest: 3000, host: 3333
    
    kali.vm.provision :shell, path: "provision.sh"
    kali.vm.provision :shell, path: "provision-docker.sh"
    kali.vm.provision :shell, path: "provision-go.sh"

    config.vm.provision "file", source: "install/code_1.74.2-1671533413_amd64.deb", destination: "~/code_1.74.2-1671533413_amd64.deb"

    kali.vm.provision "shell", path: "provision-install-vscode.sh"
  end

end
