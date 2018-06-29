release = `lsb_release -c | awk '{ print $2 }'`.delete("\n")

file = "nodejs_#{node[:node][:version]}nodesource1~#{release}1_amd64.deb"

# Node have decided to change it again, after version 8 of node
if node['node']['major_version'].to_i > 8
  file = "nodejs_#{node[:node][:version]}nodesource1_amd64.deb"
end

href = [
  "#{node[:node][:schema]}:/",
  node[:node][:host],
  "node_#{node[:node][:major_version]}",
  'pool',
  'main',
  'n',
  'nodejs',
  file,
].join('/')

remote_file "#{Chef::Config[:file_cache_path]}/#{file}" do
  source href
  action :create_if_missing
  notifies :run, 'execute[dpkg-install]', :immediately
  notifies :run, 'execute[apt-install]', :immediately
end

execute 'dpkg-install' do
  command "dpkg -i #{Chef::Config[:file_cache_path]}/#{file} 1>&2 > /dev/null"
  ignore_failure true
  action :nothing
end

execute 'apt-install' do
  command 'apt-get install -f -y'
  action :nothing
end
