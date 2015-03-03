#
# Cookbook Name:: seqan-nightly
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "windows"

# Define new resource to do global install of packages.
windows_package 'python2.7' do
	source node['seqan-nightly']['python_src']
	action :install
end

# Define new resource to add to path variable.
windows_path node['seqan-nightly']['python_path'] do
	action :add
end

windows_package 'cmake' do
	source node['seqan-nightly']['cmake_src']
	action :install
end

windows_path node['seqan-nightly']['cmake_path'] do
	action :add
end