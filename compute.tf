data "openstack_images_image_v2" "default_image" {
    name = var.instance_image
  
}

data "openstack_compute_flavor_v2" "instance_1" {
  name = var.instance_flavor
}

resource "openstack_compute_instance_v2" "instance_1" {
  name            = "osgiliath"
  image_id        = data.openstack_images_image_v2.default_image.id
  flavor_id       = data.openstack_compute_flavor_v2.instance_1.id
  security_groups = ["Gondor Default Rules"]

  metadata = {
    terraform_managed = "true"
  }
  key_pair = openstack_compute_keypair_v2.laptop.name

  network {
    name = openstack_networking_network_v2.boromir_network.name
    port = openstack_networking_port_v2.port_1.id
  }
}


resource "openstack_compute_instance_v2" "instance_2" {
  name            = "cair andros"
  image_id        = data.openstack_images_image_v2.default_image.id
  flavor_id       = data.openstack_compute_flavor_v2.instance_1.id
  security_groups = ["Gondor Default Rules"]

  metadata = {
    terraform_managed = "true"
  }
  key_pair = openstack_compute_keypair_v2.laptop.name

  network {
    name = "shared"
  }
}

resource "openstack_compute_keypair_v2" "laptop" {
  name = "burkey-laptop"
  public_key = var.ssh_public_key
  
}