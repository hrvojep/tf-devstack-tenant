# External network

data "openstack_networking_network_v2" "public" {
  name = "public"
  
}
# Create a network inside the project
resource "openstack_networking_network_v2" "boromir_network" {
  name           = var.network_name
  admin_state_up = var.network_state
}
## Create a subnet for the given network
resource "openstack_networking_subnet_v2" "boromir_subnet" {
  name       = var.subnet_name
  network_id = openstack_networking_network_v2.boromir_network.id
  cidr       = var.subnet_cidr
  ip_version = 4
}

## Create a Port on the Given Network
resource "openstack_networking_port_v2" "port_1" {
  name           = "port_1"
  network_id     = openstack_networking_network_v2.boromir_network.id
  admin_state_up = "true"
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.boromir_subnet.id
  }
}

## Create a floating IP from the public pool
resource "openstack_networking_floatingip_v2" "fip_1" {
  pool = "public"
  
}

## Associate the public IP address to the created port. This is then attached to the instance. Needs router!
resource "openstack_networking_floatingip_associate_v2" "fip_1" {
  floating_ip = openstack_networking_floatingip_v2.fip_1.address
  port_id = openstack_networking_port_v2.port_1.id
}
#Gondor router connecting to public!
resource "openstack_networking_router_v2" "gondor_router" {
  name = "gondor"
  external_network_id = data.openstack_networking_network_v2.public.id
  
}
#interface on router in Boromir subnet
resource "openstack_networking_router_interface_v2" "gondor-router" {
  router_id = openstack_networking_router_v2.gondor_router.id
  subnet_id = openstack_networking_subnet_v2.boromir_subnet.id

  
}

