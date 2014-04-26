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


{ "192.168.15.35" => "kitt kitt.localhost.tld", "192.168.15.2" => "shepard shepard.local.tld", "192.168.15.40" => "red6 red6.local.tld" }.each do |ip, hostname|
    hostname_entry = hostsfile_entry "set hostname" do
        ip_address ip
        hostname hostname
        action :create
    end
end



#log "ssh keys" do
#    message "ssh_users: #{ssh_users}"
#    level :warn
#end

#node.normal[:ssh_keys] = { 'root' => ["root-chef-workstation"] }
