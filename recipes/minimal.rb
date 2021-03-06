# encoding: utf-8
# Cookbook Name:: linux-base
# Recipe:: minimal
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'set_hostname'
include_recipe 'chef-client'

ssh_users = []
search(:users, "*:*").each do |user| 
    next unless /-/.match(user["id"]) && user['ssh_keys']

    username, hostname = user['id'].split(/-/,2)
    next if node['hostname'] == hostname && username != 'root'

    ssh_users << user["id"]    
end

node.normal[:ssh_keys] = { 'root' => ssh_users }

include_recipe 'ssh-keys'
