#
# Cookbook Name:: ws-phonebook-backend
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

directory '/etc/phonebook' do
  owner 'root'
  group 'root'
  mode 00755
  recursive true
  action :create
end

template '/etc/phonebook/config.yml' do
  owner 'root'
  group 'root'
  mode 00744
  variables({
    :fqdn => node['fqdn']
  })
end
