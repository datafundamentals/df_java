# set_java_home.rb
#need different versions due to installation differences between debian/rhel


directory "/etc/profile.d" do
  mode 00755
end
case node['platform_family']
when "debian" 

file "/etc/profile.d/java.sh" do 
user "root" 
group "root"
mode "0755"
content "JAVA_HOME=/usr/local/java/jdk1.7.0_51\n
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin\n
export JAVA_HOME\n
export PATH"
action :create 
end

when "rhel"
  file "/etc/profile.d/java.sh" do 
user "root" 
group "root"
mode "0755"
content "JAVA_HOME=/usr/java/jdk1.7.0_51\n
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin\n
export JAVA_HOME\n
export PATH"
action :create
end
end
