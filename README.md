[![Build Status](https://travis-ci.org/three18ti/chef-linux-base.svg?branch=master)](https://travis-ci.org/three18ti/chef-linux-base)

linux-base Cookbook
===================
TODO: Enter the cookbook description here.

e.g.
This cookbook makes your favorite breakfast sandwich.

Requirements
------------
ntp
zabbix
ssh-keys
chef-client
set_hostname: https://github.com/three18ti/chef-cookbook-hostname/blob/master/recipes/default.rb


e.g.
#### packages

Attributes
----------

e.g.
#### linux-base::default

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>default['zabbix']['agent']['servers']</tt></td>
    <td>ArrayRef</td>
    <td>Zabbix Servers list</td>
    <td><tt>[ 'zabbix' ]</tt></td>
  </tr>
  <tr>
    <td><tt>default['zabbix']['agent']['servers_active']</tt></td>
    <td>ArrayRef</td>
    <td>Zabbix ServersActive list</td>
    <td><tt>['zabbix']</tt></td>
  </tr>
  <tr>
    <td><tt>default['ntp']['peers']</tt></td>
    <td>ArrayRef</td>
    <td>NTP Peers</td>
    <td><tt>['192.168.15.35', '192.168.15.40', '192.168.15.2']</tt></td>
  </tr>
  <tr>
    <td><tt>default[:ssh_keys_keep_existing]</tt></td>
    <td>Boolean</td>
    <td>Keep old ssh keys</td>
    <td><tt>false</tt></td>
  </tr>
</table>

Usage
-----
#### linux-base::default
Just include `linux-base` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[linux-base]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
