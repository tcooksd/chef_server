#!/bin/bash 

curl -L https://www.opscode.com/chef/install.sh | sudo bash || echo " curl failed "
mkdir -p /var/chef/cache /var/chef/cookbooks/chef-server || echo " unable to make directories " 
yum install wget -y  || echo " unable to install wget "  
mv chef-server/* /var/chef/cookbooks/chef-server/  
chef-solo -o 'recipe[chef-server::default]' || echo "chef solo failed " 


