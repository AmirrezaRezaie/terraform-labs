# Vagrant + Terraform Lab: Netdata Cluster

This lab demonstrates how to use **Terraform** to orchestrate **Vagrant-based virtual machines** in a clean, scalable, and data-driven way.  
The goal of this project is to provision multiple Vagrant VMs using a **single Vagrantfile**, while controlling VM creation entirely through **Terraform variables**.

This project is intended for **learning and portfolio purposes**.

---

## Architecture Overview

- **Terraform** is used as the orchestration layer
- **Vagrant** is responsible for local VM provisioning
- A single `Vagrantfile` is reused for all instances
- VM-specific parameters (name, IP) are passed from Terraform to Vagrant using **environment variables**
- Multiple VMs are created dynamically using `for_each`

---

## Project Structure

```text
vagrant-netdata/
├── README.md
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── versions.tf
│   └── Vagrantfile
└── scripts/
