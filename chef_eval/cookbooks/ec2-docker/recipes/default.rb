#
# Cookbook:: ec2-docker
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
search("groups", "*:*").each do |groups_data|
  groups groups_data["id"] do
    comment groups_data["comment"]
    uid groups_data["uid"]
    gid groups_data["gid"]
    home groups_data["home"]
    shell groups_data["shell"]
  end
end
search("users", "*:*").each do |users_data|
  users user_data["id"] do
    comment user_data["comment"]
    uid user_data["uid"]
    gid user_data["gid"]
    home user_data["home"]
    shell user_data["shell"]
  end
end
