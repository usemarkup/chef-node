default[:node][:version] = '8.4.0-1'
default[:node][:major_version] = '8.x'

default[:node][:schema] = 'https'

default[:node][:checksum] = nil

case node[:platform_family]
when 'debian'
  default[:node][:host] = 'deb.nodesource.com'
when 'rhel'
  default[:node][:host] = 'rpm.nodesource.com'

  if node['platform_version'].to_i == 6
    default[:node][:checksum] = '29ecbc64c69a334bd54573aaa528930992e836a1501756b46ae4e8bfdeba9c03'
  end
end

# CENTOS
# EPEL 6: https://rpm.nodesource.com/pub_5.x/el/6/x86_64/nodejs-5.7.1-1nodesource.el6.x86_64.rpm
# EPEL 7: https://rpm.nodesource.com/pub_5.x/el/7/x86_64/nodejs-5.7.1-1nodesource.el7.centos.x86_64.rpm
# 0.10 Release https://rpm.nodesource.com/pub_0.10/el/6/x86_64/nodejs-0.10.43-1nodesource.el6.x86_64.rpm

# Debian
# https://deb.nodesource.com/node_6.x/pool/main/n/nodejs/
