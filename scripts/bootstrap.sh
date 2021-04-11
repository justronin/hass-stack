#!/bin/bash

# needs to run as root

apt-get install -y curl
curl -L https://www.opscode.com/chef/install.sh | bash -s -- -v 12

mkdir ~/chef_cache
cp hass-stack/example/* ~/chef_cache
