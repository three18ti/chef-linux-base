name             'linux-base'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures linux-base'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

depends 'set_hostname'
depends 'zabbix'
depends 'chef-client'
depends 'ssh-keys'
depends 'ntp'
depends 'snmp'
