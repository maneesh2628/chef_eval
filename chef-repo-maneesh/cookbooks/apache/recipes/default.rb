#
# Cookbook Name:: apache
package 'httpd' do
  action :install
end

package 'httpd' do
  action :install
end

cookbook_file '/home/maneesh/Desktop/chef-repo-maneesh/cookbooks/apache/files/default' do
  source 'index.html'
end
service 'httpd' do
  action :start
end
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
