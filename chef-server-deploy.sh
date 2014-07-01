!#/bin/bash 

curl -L https://www.opscode.com/chef/install.sh | sudo bash || echo " curl failed " ; exit 
mkdir -p /var/chef/cache /var/chef/cookbooks/chef-server || echo " unable to make directories " ; exit 
yum install wget -y  || echo " unable to install wget " ; exit 
wget -qO- https://github.com/opscode-cookbooks/chef-server/archive/master.tar.gz | tar xvzC /var/chef/cookbooks/chef-server --strip-components=1 || echo " github pull failed " 
chef-solo -o 'recipe[chef-server::default]' || echo "chef solo failed " 


