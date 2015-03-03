#
# Cookbook Name:: seqan-nightly
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if node['platform'] == 'windows'
	if node['kernel']['os_info']['os_architecture'] == '64-Bit'
		default['seqan-nightly']['python_src'] = 'https://www.python.org/ftp/python/2.7.9/python-2.7.9.amd64.msi'
		default['seqan-nightly']['program_files_win32'] = '#{ENV[''ProgramW6432'']}'
	else
		default['seqan-nightly']['python_src'] = 'https://www.python.org/ftp/python/2.7.9/python-2.7.9.msi'
		default['seqan-nightly']['program_files_win32'] = '#{ENV[''ProgramW6432'']}'
	end
	default['seqan-nightly']['cmake_src'] = 'http://www.cmake.org/files/v3.2/cmake-3.2.0-rc2-win32-x86.exe'
	
	# Path variables:
	default['seqan-nightly']['python_path'] = 'C:\Python27'
	default['seqan-nightly']['cmake_path'] = '#{node[''seqan-nightly''][''program_files_win32'']}\CMake\bin'
	
	
end


