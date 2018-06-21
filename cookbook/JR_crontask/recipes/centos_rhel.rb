
#ensure cron service is started and enabled.
service 'cron' do
  service_name 'crond'
  action [:enable, :start]
end

#set cron job to run chef client daily at 6:00am
cron 'Chef Client daily run' do
  minute '0'
  hour '6'
  weekday '*'
  command "chef-client"
  user "root"
end

#set cron job to do an "yum update" once every 2 days.
cron '48 hour update' do
  minute '0'
  hour '6'
  weekday '1,3,5,7'
  command "yum update"
  user "root"
end

#set cron job to do an "yum upgrade" once every 2 days.
cron '48 hour upgrade' do
  minute '0'
  hour '6'
  weekday '1,3,5,7'
  command "yum upgrade"
  user "root"
end