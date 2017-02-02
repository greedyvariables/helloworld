
#Test Comment

case 
when node[:platform_family] == 'rhel'
  default[:helloworld][:file] = "/tmp/helloworld.txt"
  default[:helloworld][:content] = "It works!"
  #default[:helloworld][:os_user] = "hw_user"
  #default[:helloworld][:os_password] = "Just4Now"  
  #default[:helloworld][:os_group] = "hw_group"
when 'windows'
  default[:helloworld][:file] = "C:\helloworld.txt"
  default[:helloworld][:content] = "It works!"  
end

