home = ENV['HOME']
file_cache_path "#{home}/chef_cache"
cookbook_path "#{home}/hass-stack"
json_attribs "#{home}/chef_cache/node.json"
data_bag_path "#{home}/chef_cache/data_bags"
