# Elasticsearch + Vagrant

Initializes an Elasticsearch cluster.

Tested using the Ubuntu 14 LTS virtualbox "box" from https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box

## Usage

- Install vagrant: http://www.vagrantup.com/downloads.html
- Load the Ubuntu 14 LTS box
  - `vagrant box add Ubuntu14 https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box`
  
- Run vagrant
  - `cd /path/to/vagrant-playground/elasticsearch`
  - `vagrant up`

- For each node start Elasticsearch (need to determine exactly why this is - the chef run does try to start the service)
  - sudo /etc/init.d/elasticsearch start

## Notes

The three nodes are configured to use the IP Addresses: `192.168.50.11`, `192.168.50.12`, and `192.168.50.13`.

You can SSH to these nodes using the default username: `vagrant` and password: `vagrant`.