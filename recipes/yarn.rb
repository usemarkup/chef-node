case node['platform_family']
when 'debian'
  package 'apt-transport-https' do
    action :install
  end

  apt_repository 'yarn' do
    uri 'https://dl.yarnpkg.com/debian/'
    key 'https://dl.yarnpkg.com/debian/pubkey.gpg'
    components ['main']
    distribution 'stable'
    action :add
  end
when 'rhel'
  yum_repository 'yarn' do
    description 'Yarn Repository'
    baseurl 'https://dl.yarnpkg.com/rpm/'
    gpgkey 'https://dl.yarnpkg.com/rpm/pubkey.gpg'
    action :create
  end
end

package 'yarn' do
  version [node['yarn']['version']] if defined?(node['yarn']['version'])
end
