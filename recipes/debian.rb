release = `lsb_release -c | awk '{ print $2 }'`.gsub(/\n/,"")

case node[:kernel][:machine]
  when 'x86_64'
    machine = 'amd64'
  else
    machine = node[:kernel][:machine]
end

file = "nodejs_#{node[:node][:version]}nodesource1~#{release}1_#{machine}.deb"

href = [
  "#{node[:node][:schema]}:/",
  node[:node][:host],
  "node_#{node[:node][:major_version]}",
  'pool',
  'main',
  'n',
  'nodejs',
  file
].join('/')

remote_file "#{Chef::Config[:file_cache_path]}/#{file}" do
    source href
    action :create_if_missing
    notifies :run, "execute[dpkg-install]", :immediately
    notifies :run, "execute[apt-install]", :immediately
end

execute 'dpkg-install' do
  command "dpkg -i #{Chef::Config[:file_cache_path]}/#{file} 1>&2 > /dev/null"
  ignore_failure true
  action :nothing
end

execute 'apt-install' do
  command "apt-get install -f -y"
  action :nothing
end
