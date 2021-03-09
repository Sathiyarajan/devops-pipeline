require 'getoptlong'

Vagrant.require_version ">= 1.8.1"

tags=Array.new
numberOfVms=4
vmMemory=2048

sshKey="#{Dir.home}/.ssh/id_rsa.pub"

Vagrant.configure("2") do |config|
  (1..numberOfVms).each do |i|
    config.vm.define "node#{i}" do |host|
      host.vm.box = "centos/7"
      host.vm.hostname = "node#{i}"
      host.vm.network "private_network", ip: "192.168.120.1#{i}"
      config.vm.provision "shell" do |s|
        ssh_pub_key = File.readlines("#{sshKey}").first.strip
        s.inline = <<-SHELL
          echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
          mkdir /root/.ssh && chmod 700 /root/.ssh
          touch /root/.ssh/authorized_keys && chmod 600 /root/.ssh/authorized_keys
          echo #{ssh_pub_key} >> /root/.ssh/authorized_keys
        SHELL
      end
      config.vm.provision "shell" do |s|
        s.inline = "ifup eth1"
      end
      host.vm.provider "virtualbox" do |v|
        v.cpus = 2
        v.memory = vmMemory
      end
      # host.vm.provider :libvirt do |domain|
      #   domain.memory = vmMemory
      #   domain.cpus = 2
      #   domain.nested = true
      #   domain.volume_cache = 'default'
      # end
    end
  end
end
