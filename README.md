# Logical configuration


### Adding routes

You will need to add a route from your laptop to the openstack public network. This is the network in which floating IP addresses are assigned. By default your public network is `172.24.4.0/24` but you can check the public network range with `admin` credentials.

Add the route:

`sudo route add 172.24.4.0/24 192.168.1.123`

This will add the network route with the nexthop of the OpenStack instance.