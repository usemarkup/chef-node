case node[:platform_family]
  when 'debian'
    include_recipe 'node::debian'
  when 'rhel'
    include_recipe 'node::rhel'
end
