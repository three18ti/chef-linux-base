default['zabbix']['agent']['servers'] = ['zabbix']
default['zabbix']['agent']['servers_active'] = ['zabbix']

default['ntp']['peers'] = ['192.168.15.35', '192.168.15.40', '192.168.15.2']

default[:ssh_keys_keep_existing] = false

#ssh_users = []
#search(:users, "*:*").each do |user|
#data_bag("users").each do |id|
#    user = data_bag_item('users', id)

#    next unless /-/.match(user["id"]) && user['ssh_keys']
 
#    username, hostname = user['id'].split(/-/,2)
#    next if node['hostname'] == hostname && username != 'root'
 
#    ssh_users << user["id"]
#end

#default['ssh_keys'] = { 'root' => ['root-chef-workstation', 'root-red5', 'jon-red5'] }
#default['ssh_keys'] = { 'root' => ssh_users }
