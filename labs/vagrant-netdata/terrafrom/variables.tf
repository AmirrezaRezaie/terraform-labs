variable "vm_name" {
  description = "Name of the Vagrant VM"
  type        = string
  default     = "netdata-vm"
}

variable "vm_memory" {
  description = "Memory size in MB"
  type        = number
  default     = 1024
}

variable "vm_cpus" {
  description = "Number of CPU cores"
  type        = number
  default     = 1
}

variable "vm_ip" {
  description = "Private IP address for the VM"
  type        = string
  default     = "192.168.56.10"
}
