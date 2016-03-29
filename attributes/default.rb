default[:node][:version] = "5.7.1-1"
default[:node][:major_version] = "5.x"

default[:node][:epel] = node['platform_version'].to_i

default[:node][:host] = "rpm.nodesource.com"
default[:node][:schema] = "https"

# EPEL 6: https://rpm.nodesource.com/pub_5.x/el/6/x86_64/nodejs-5.7.1-1nodesource.el6.x86_64.rpm
# EPEL 7: https://rpm.nodesource.com/pub_5.x/el/7/x86_64/nodejs-5.7.1-1nodesource.el7.centos.x86_64.rpm
# 0.10 Release https://rpm.nodesource.com/pub_0.10/el/6/x86_64/nodejs-0.10.43-1nodesource.el6.x86_64.rpm
