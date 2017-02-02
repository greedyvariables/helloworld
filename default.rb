################################################################################
# Licensed Materials - Property of IBM Copyright IBM Corporation 2015. All Rights Reserved.
# U.S. Government Users Restricted Rights - Use, duplication or disclosure restricted by GSA ADP
# Schedule Contract with IBM Corp.
################################################################################
#
#updated

#Test Comment

case node[:platform_family]
when 'rhel'
	default[:helloworld][:file] = "/tmp/helloworld.txt"
	default[:helloworld][:content] = "It works!"
  default[:helloworld][:os_user] = "hw_user"
  default[:helloworld][:os_password] = "Just4Now"  
  default[:helloworld][:os_group] = "hw_group"
  default[:helloworld][:secondary_groups] = []
when 'windows'
	default[:helloworld][:file] = "C:\helloworld.txt"
	default[:helloworld][:content] = "It works!"  
end