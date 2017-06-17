case node['platform_family']
when 'debian'
  include_recipe 'nodesource::debian'
when 'rhel'
  include_recipe 'nodesource::rhel'
end
