default[:node][:version] = "5.7.1-1"
default[:node][:major_version] = "5"

default[:node][:epel] = node['platform_version'].to_i

# Node have decided to be annoying and change the filename for EPEL 7
if node[:node][:epel] == 7
    default[:node][:file] = "nodejs-#{node[:node][:version]}nodesource.el#{node[:node][:epel]}.centos.x86_64.rpm"
else
    default[:node][:file] = "nodejs-#{node[:node][:version]}nodesource.el#{node[:node][:epel]}.x86_64.rpm"
end

default[:node][:host] = "rpm.nodesource.com"
default[:node][:schema] = "https"

default[:node][:link] = "#{node[:node][:schema]}://#{node[:node][:host]}/pub_#{node[:node][:major_version]}.x/el/#{node[:node][:epel]}/x86_64/#{node[:node][:file]}"

# EPEL 6: https://rpm.nodesource.com/pub_5.x/el/6/x86_64/nodejs-5.7.1-1nodesource.el6.x86_64.rpm
# EPEL 7: https://rpm.nodesource.com/pub_5.x/el/7/x86_64/nodejs-5.7.1-1nodesource.el7.centos.x86_64.rpm
# 0.10 Release https://rpm.nodesource.com/pub_0.10/el/6/x86_64/nodejs-0.10.43-1nodesource.el6.x86_64.rpm
