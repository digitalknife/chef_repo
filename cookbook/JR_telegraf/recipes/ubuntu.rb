#This recipe is intended for the linux machine it is installed on to install telegraf
#communicate back with the chronograf service through influx db.


#cookbook file
cookbook_file '/tmp/telegraf_1.5.3-1_amd64.deb' do
  source 'telegraf_1.5.3-1_amd64.deb'
  not_if { ::File.exist?('/etc/telegraf/telegraf.conf') }
end

#Package - *use dpkg_package resource for ubuntu systems*
dpkg_package 'telegraf_1.5.3-1_amd64.deb' do
  source '/tmp/telegraf_1.5.3-1_amd64.deb'
  not_if { ::File.exist?('/etc/telegraf/telegraf.conf') }
end

#template
template '/etc/telegraf/telegraf.conf' do
  source 'telegraf.conf.erb'
  mode '0644'
  owner 'root'
  group 'root'
  variables(influxdb_server: node['telegraf']['influxdb_server'],
            influxdb_user: node['telegraf']['influxdb_user'],
            influxdb_passwd: node['telegraf']['influxdb_passwd']
           )
  notifies :restart, 'service[telegraf]', :immediately
end

#service 
service 'telegraf' do
  action [:enable, :start]
end

#cleanup
file '/tmp/telegraf_1.5.3-1_amd64.deb' do
  action :delete
end

#BELOW NOT YET IMPLEMENTED

#debian checksum
#9f61c0faf2d02acf869c7f8b1a840186a753b72359c1cb7cb28f6f514fc2c39a

#rhel/centos checksum 
#541f1f6fc063b8c170b8f26a192332a927be8f9886c9a8b5dd04ab5f58e322d4

