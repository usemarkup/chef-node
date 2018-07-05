name 'nodesource'
license 'MIT Licence'
description 'Installs nodejs from nodesource'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.4.0'

maintainer 'Gavin Staniforth'
maintainer_email 'gavin@usemarkup.com'

source_url 'https://github.com/usemarkup/chef-node'

supports 'centos'
supports 'debian'
supports 'ubuntu'

chef_version '>= 12.7' if respond_to?(:chef_version)

depends 'compat_resource'
