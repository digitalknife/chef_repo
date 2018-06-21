#
# Cookbook:: JR_crontask
# Recipe:: default
#Author:: Jermaine Rakoczy 2018 (for home use)
#
if node['platform'] == 'ubuntu'
  include_recipe 'JR_crontask::ubuntu'
else include_recipe 'JR_crontask::centos_rhel'
end