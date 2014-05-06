# encoding: utf-8
# Cookbook Name:: linux-base
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'zabbix'
include_recipe 'ntp' 
include_recipe 'snmp'

include_recipe 'linux-base::minimal'

{ "192.168.15.35" => "kitt kitt.localhost.tld", "192.168.15.2" => "shepard shepard.local.tld", "192.168.15.40" => "red6 red6.local.tld" }.each do |ip, hostname|
    hostname_entry = hostsfile_entry "set hostname" do
        ip_address ip
        hostname hostname
        action :create
    end
end
