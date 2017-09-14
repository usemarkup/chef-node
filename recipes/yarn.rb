case node['platform_family']
when 'debian'
  yum_repository 'yarn' do
    description 'Yarn Repository'
    baseurl 'https://dl.yarnpkg.com/debian/'
    gpgkey 'https://dl.yarnpkg.com/debian/pubkey.gpg'
    action :create
  end
when 'rhel'
  yum_repository 'yarn' do
    description 'Yarn Repository'
    baseurl 'https://dl.yarnpkg.com/rpm/'
    gpgkey 'https://dl.yarnpkg.com/rpm/pubkey.gpg'
    action :create
  end
end

package 'yarn'
