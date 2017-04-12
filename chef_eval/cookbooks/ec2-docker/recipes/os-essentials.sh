template '/etc/ssh/sshd_config' do
  source 'sshd.erb'
end
remote_file '/opt/os.sh' do
  source 'https://s3.amazonaws.com/man28/os.sh'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
execute 'run script' do
  command 'sh /opt/os.sh'
end
