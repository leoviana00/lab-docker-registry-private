Vagrant.configure("2") do |config|
    config.vm.hostname = "registry"
    config.vm.box = "bento/ubuntu-20.04"
    config.vm.network "private_network", ip: "192.168.10.30"

    config.vm.provision "shell" do |s|
    ssh_pub_key = File.readlines("./keys/registry.pub").first.strip
    s.inline = <<-SHELL
    echo "Ambiente para testes Registry" > /tmp/vagrant.txt
    echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
    echo #{ssh_pub_key} >> /root/.ssh/authorized_keys
  SHELL
  end

  #Virtualbox Settings
  config.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.name = "registry"
      vb.memory = "1024"
      vb.cpus = "2"

  end
end