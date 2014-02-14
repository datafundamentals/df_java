# oracle_ubuntu.rb

# create a directory to store java
directory "/usr/local/java" do 
	owner "root"
	group "root"
	mode "0777"
	recursive true
	action :create
end
# import the RPM for the shared directory
remote_file "/usr/local/java/jdk-7u51-linux-x64.gz" do
owner "root"
group "root" 
source "file:///vagrant/binaries/jdk-7u51-linux-x64.gz"
mode "0777" 
action :create_if_missing
end

execute "unzip" do 
	cwd "/usr/local/java"
	command "tar -xzvf jdk-7u51-linux-x64.gz"
	action :run
end

#set JAVA_HOME
include_recipe "df_java::set_java_home"
#inform JAVA where it is. Sounds like a symlink
execute "alert" do 
	user "root"
	cwd "/usr/local/java"
	command 'sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk1.7.0_51/bin/java" 1'
	action :run
end

execute "default" do 
	user "root"
	cwd "/usr/local/java" 
	command "sudo update-alternatives --set java /usr/local/java/jdk1.7.0_51/bin/java"
	action :run 
end

