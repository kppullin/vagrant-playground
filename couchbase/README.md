# Couchbase + Vagrant

Initializes a Couchbase cluster.

Tested using the Ubuntu 14 LTS virtualbox "box" from https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box

## Usage

- Install vagrant: http://www.vagrantup.com/downloads.html
- Load the Ubuntu 14 LTS box
  - `vagrant box add Ubuntu14 https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box`
  
- Run vagrant
  - `cd /path/to/vagrant-playground/couchbase`
  - `vagrant up`

### Set up the cluster

The Couchbase chef cookbook does not configure the Couchbase cluster, so there's a few extra steps required to get up and running.
Here's how to do that:

- Load the Couchbase admin page at `http://192.168.50.11:8091`
- Log in using the username `Administrator` and password `vagrant`
- Click the `Server Nodes` tab
- Click `Add Server`
  - In the dialog, enter `192.168.1.12` along with the same username and password
  - Repeat for `192.168.1.13`
- Finally, click the `Rebalance` button.

## Notes

The three nodes are configured to use the IP Addresses: `192.168.50.11`, `192.168.50.12`, and `192.168.50.13`.

You can SSH to these nodes using the default username: `vagrant` and password: `vagrant`.

You can connect to the three Couchbase admin pages using the username: `Administrator` and password `vagrant`.
Both are case sensitive.
The URLs are `http://192.168.50.11:8091`, `http://192.168.50.12:8091`, and `http://192.168.50.13:8091`
