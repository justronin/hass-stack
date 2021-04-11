#
# Cookbook:: hass-stack
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# package 'docker-ce'
# package 'docker-ce-cli'
# package 'containerd.io'

bash 'docker install work-around for ubuntu 18.04' do
  not_if { ::File.exist?('/usr/bin/docker') }
  code <<-EOL
    sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
      sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic test"
    sudo apt update
    sudo apt-get -y install docker-ce docker-ce-cli containerd.io
  EOL
end

service 'docker' do
  service_name 'docker'
  action :enable
end

package 'apparmor-utils'
package 'avahi-daemon'
package 'dbus'
package 'jq'
package 'network-manager'
package 'socat'

remote_file '/tmp/installer.sh' do
  source 'https://raw.githubusercontent.com/home-assistant/supervised-installer/master/installer.sh'
  mode '0755'
  action :create
end

# bash 'install home assistant' do
#   only_if { `systemctl is-enabled hassio-supervisor.service`.empty? }
#   code 'yes | /tmp/installer.sh'
# end