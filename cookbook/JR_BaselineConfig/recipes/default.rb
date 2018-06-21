#
# Cookbook:: JR_BaselineConfig
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe 'JR_telegraf::default'
include_recipe 'JR_crontask::default'
#include_recipt 'JR_NSC'