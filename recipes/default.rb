#
# Cookbook Name:: df_1
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("this is a test of whether jenkins can work.")
Chef::Log.info("Don't forget to bring a towel")
Chef::Log.info(" I HAVE NO IDEA WHATS GOING ON")


case node['platform_family']
when "debian"
	include_recipe "df_java::oracle_ubuntu"
else
include_recipe "df_java::set_java_home"
package "jdk-7u51-linux-x64" do 
	source "/vagrant/binaries/jdk-7u51-linux-x64.rpm"
	action :install
end
end