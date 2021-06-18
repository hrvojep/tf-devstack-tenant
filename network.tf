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

resource "openstack_networking_port_v2" "port_1" {
  name           = "port_1"
  network_id     = "${openstack_networking_network_v2.boromir_network.id}"
  admin_state_up = "true"
}

resource "openstack_networking_floatingip_v2" "fip_1" {
  pool = "public"
  
}

resource "openstack_networking_floatingip_associate_v2" "fip_1" {
  floating_ip = openstack_networking_floatingip_v2.fip_1.floating_ip
  port_id = openstack_networking_port_v2.port_1.id
}