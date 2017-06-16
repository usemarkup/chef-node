name             'node'
license          'MIT Licence'
description      'Installs nodejs'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

supports 'centos'
supports 'debian'
supports 'ubuntu'

chef_version '>= 12.7' if respond_to?(:chef_version)
