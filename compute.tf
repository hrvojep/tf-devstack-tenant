data "openstack_images_image_v2" "default_image" {
    name = var.instance_image
  
}

data "openstack_compute_flavor_v2" "instance_1" {
  name = var.instance_flavor
}

resource "openstack_compute_instance_v2" "instance_1" {
  name            = "osgiliath"
  image_id        = data.openstack_images_image_v2.default_image.id
  flavor_id       = "3"

  security_groups = ["Gondor Default Rules"]

  metadata = {
    this = "that"
  }

  network {
    name = openstack_networking_network_v2.boromir_network.id
  }
}