execute 'yum' do
  command 'yum update -y'
  action :run
  command 'yum install -y yum-utils'
  action :run
  command 'yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo'
  action :run
  command 'yum makecache fast'
  action :run
  command 'yum install docker-ce'
  action :run
end

