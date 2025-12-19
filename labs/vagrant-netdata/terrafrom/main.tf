provider "vagrant" {}

resource "vagrant_vm" "netdata_vm" {
  name = "netdata-vm"
}
