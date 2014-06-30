curl -L https://www.opscode.com/chef/install.sh | sudo bash
mkdir -p /var/chef/cache /var/chef/cookbooks/chef-server
yum install wget -y 
wget -qO- https://github.com/opscode-cookbooks/chef-server/archive/master.tar.gz | tar xvzC /var/chef/cookbooks/chef-server --strip-components=1
chef-solo -o 'recipe[chef-server::default]'


