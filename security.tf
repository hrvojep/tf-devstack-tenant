data "openstack_networking_secgroup_v2" "default" {
    name = "default"
  
}

resource "openstack_networking_secgroup_rule_v2" "default-ssh" {
    security_group_id = data.openstack_networking_secgroup_v2.default.id
    direction         = "ingress"
    ethertype         = "IPv4"
    protocol          = "tcp"
    port_range_min    = 22
    port_range_max    = 22
    remote_ip_prefix  = "0.0.0.0/0"
  
}

resource "openstack_networking_secgroup_rule_v2" "default-icmp" {
    security_group_id = data.openstack_networking_secgroup_v2.default.id
    direction         = "ingress"
    ethertype         = "IPv4"
    protocol          = "icmp"
    remote_ip_prefix  = "0.0.0.0/0"
    
}