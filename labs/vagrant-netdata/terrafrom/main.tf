provider "vagrant" {}

resource "vagrant_vm" "netdata_vm" {
  name = "netdata-vm"

  vagrantfile = <<-EOF
    Vagrant.configure("2") do |config|
      config.vm.box = "ubuntu/jammy64"

      config.vm.provider "virtualbox" do |vb|
        vb.memory = 1024
        vb.cpus  = 1
      end

      config.vm.network "private_network", ip: "192.168.56.10"
    end
  EOF
}
