# Node have decided to be annoying and change the filename for EPEL 7
if node[:node][:epel] == 7
    node.default[:node][:file] = "nodejs-#{node[:node][:version]}nodesource.el#{node[:node][:epel]}.centos.x86_64.rpm"
else
    node.default[:node][:file] = "nodejs-#{node[:node][:version]}nodesource.el#{node[:node][:epel]}.x86_64.rpm"
end

node.default['node']['link'] = "#{node[:node][:schema]}://#{node[:node][:host]}/pub_#{node[:node][:major_version]}/el/#{node[:node][:epel]}/x86_64/#{node[:node][:file]}"

package "#{Chef::Config[:file_cache_path]}/#{node[:node][:file]}" do
    action :nothing
end

remote_file "#{Chef::Config[:file_cache_path]}/#{node[:node][:file]}" do
    source "#{node[:node][:link]}"
    action :create_if_missing
    notifies :install, "package[#{Chef::Config[:file_cache_path]}/#{node[:node][:file]}]", :immediately
end
