variable "vms" {
  description = "Map of Vagrant VMs"
  type = map(object({
    ip = string
  }))

  default = {
    netdata-master = {
      ip = "192.168.56.10"
    }

    netdata-slave = {
      ip = "192.168.56.11"
    }
  }
}
