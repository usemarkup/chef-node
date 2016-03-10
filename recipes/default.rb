package "#{Chef::Config[:file_cache_path]}/#{node[:node][:file]}" do
    action :nothing
end

remote_file "#{Chef::Config[:file_cache_path]}/#{node[:node][:file]}" do
    source "#{node[:node][:link]}"
    action :create_if_missing
    notifies :install, "package[#{Chef::Config[:file_cache_path]}/#{node[:node][:file]}]", :immediately
end
