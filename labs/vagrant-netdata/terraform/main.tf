provider "vagrant" {}

resource "vagrant_vm" "vm" {
  for_each = var.vms

  name = each.key

  env = {
    VM_NAME = each.key
    VM_IP   = each.value.ip
  }
}
