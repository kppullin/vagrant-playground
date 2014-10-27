# Consul + Vagrant

Initializes a Consul cluster.

Tested using the Ubuntu 14 LTS virtualbox "box" from https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box

## Usage

- Install vagrant: http://www.vagrantup.com/downloads.html
- Load the Ubuntu 14 LTS box
  - `vagrant box add Ubuntu14 https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box`
  
- Run vagrant
  - `cd /path/to/vagrant-playground/couchbase`
  - `vagrant up`

## Notes

The three nodes are configured to use the IP Addresses: `192.168.50.2`, `192.168.50.3`, and `192.168.50.4`.

You can SSH to these nodes using the defaultm username: `vagrant` and password: `vagrant`.

The Consul UI is accessible at `http://192.168.50.2:8500/ui/` (as well the other IP Addresses).