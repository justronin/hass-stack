# hass-stack cookbook

[https://github.com/justronin/hass-stack](https://github.com/justronin/hass-stack)

First things first, clone down this repo!

```bash
apt-get install -y git
git clone https://github.com:justronin/hass-stack.git
```

Next you're going to run the following script

```bash
sudo hass-stack/scripts/bootstrap.sh
```

### create a chef cache locally with node.json and data_bags

Keep in mind that your paths may slightly differ from those following
Copy the example files into ~/chef_cache and edit them to suit

```bash
vi ~/chef_cache/solo.rb
vi ~/chef_cache/node.json
```

### run chef-solo

`sudo chef-solo -c ~/chef_cache/solo.rb`

## NOTICE :

* Built specifically for installation on Ubuntu

## The following is going to help you set up your environment
This process is based on steps found at this now dead link ~http://www.mechanicalrobotfish.com/blog/2013/01/01/configure-a-server-with-chef-solo-in-five-minutes/~
RIP

## Contributors

* Ralph Decatrel - [@justronin](https://github.com/justronin)
