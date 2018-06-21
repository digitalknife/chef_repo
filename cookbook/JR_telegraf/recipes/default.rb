#
# Cookbook:: JR_telegraf
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
if node['platform'] == 'ubuntu'
 include_recipe 'JR_telegraf::ubuntu'
else include_recipe 'JR_telegraf::centos_rhel'
end