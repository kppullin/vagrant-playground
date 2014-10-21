# Couchbase + Vagrant

Initializes a Couchbase cluster.

Tested using the Ubuntu 14 LTS virtualbox "box" from https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box

## Usage

- Install vagrant: http://www.vagrantup.com/downloads.html
- Download the Ubuntu 14 LTS box from: https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box
- Load the Ubuntu box.  We'll do this three times, one for each node in the `Ubuntu14` cluster
  - `vagrant box add Ubuntu14-1 /path/to/ubuntu-14.04-amd64-vbox.box`
  - `vagrant box add Ubuntu14-2 /path/to/ubuntu-14.04-amd64-vbox.box`
  - `vagrant box add Ubuntu14-3 /path/to/ubuntu-14.04-amd64-vbox.box`

- Run vagrant
  - `cd /path/to/vagrant-playground/couchbase`
  - `vagrant up`

### Set up the cluster

The Couchbase chef cookbook does not configure the Couchbase cluster.
Here's how to do that:

- Load the Couchbase admin page at `http://localhost:8091`
- Log in using the username `Administrator` and password `vagrant`
- Click the `Server Nodes` tab
- Click `Add Server`
  - In the dialog, enter `192.168.1.3` along with the same username and password
  - Repeat for `192.168.1.4`
- Finally, click the `Rebalance` button.

## Notes

The three nodes are configured to use the IP Addresses: `192.168.50.2`, `192.168.50.3`, and `192.168.50.4`.

You can SSH to these nodes using the defaultm username: `vagrant` and password: `vagrant`.

You can connect to the three Couchbase admin pages using the username: `Administrator` and password `vagrant`.
Both are case sensitive.
The URLs are `http://localhost:8091`, `http://localhost:8092`, and `http://localhost:8093`
