resource "openstack_networking_network_v2" "boromir_network" {
  name           = var.network_name
  admin_state_up = var.network_state
}

resource "openstack_networking_subnet_v2" "boromir_subnet" {
  name       = var.subnet_name
  network_id = openstack_networking_network_v2.boromir_network.id
  cidr       = var.subnet_cidr
  ip_version = 4
}
