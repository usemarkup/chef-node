default['node']['version'] = '10.6.0-1'
default['node']['major_version'] = '10.x'

default['node']['schema'] = 'https'

default['node']['checksum'] = nil

case node['platform_family']
when 'debian'
  default['node']['host'] = 'deb.nodesource.com'
when 'rhel'
  default['node']['host'] = 'rpm.nodesource.com'

  if node['platform_version'].to_i == 6
    default['node']['checksum'] = 'b5846ca70b8443a42f0b78266f081ece5c1d16efc009864054b313e63b08b9b0'
  end

  if node['platform_version'].to_i == 7
    default['node']['checksum'] = 'b5846ca70b8443a42f0b78266f081ece5c1d16efc009864054b313e63b08b9b0'
  end
end

default['yarn']['version'] = nil

# CENTOS
# EPEL 6: https://rpm.nodesource.com/pub_5.x/el/6/x86_64/nodejs-5.7.1-1nodesource.el6.x86_64.rpm
# EPEL 7: https://rpm.nodesource.com/pub_5.x/el/7/x86_64/nodejs-5.7.1-1nodesource.el7.centos.x86_64.rpm
# 0.10 Release https://rpm.nodesource.com/pub_0.10/el/6/x86_64/nodejs-0.10.43-1nodesource.el6.x86_64.rpm

# Debian
# https://deb.nodesource.com/node_6.x/pool/main/n/nodejs/
