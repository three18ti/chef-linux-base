#
# Cookbook Name:: linux-base
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'set_hostname'
include_recipe 'chef-client'
include_recipe 'zabbix'
include_recipe 'ntp' 

ssh_users = []
search(:users, "*:*").each do |user| 
    next unless /-/.match(user["id"]) && user['ssh_keys']

    username, hostname = user['id'].split(/-/,2)
    next if node['hostname'] == hostname && username != 'root'

    ssh_users << user["id"]    
end

node.normal[:ssh_keys] = { 'root' => ssh_users }

include_recipe 'ssh-keys'


{ "kitt" => "192.168.15.35", "shepard" => "192.168.15.2", "red6" => "192.168.15.40" }.each do |hostname, ip|
    hostname_entry = hostsfile_entry "set hostname" do
        ip_address #{ip}
        hostname #{hostname}
        action :create
    end
    puts "Name: #{name} Size: #{size}"
end



#log "ssh keys" do
#    message "ssh_users: #{ssh_users}"
#    level :warn
#end

#node.normal[:ssh_keys] = { 'root' => ["root-chef-workstation"] }
