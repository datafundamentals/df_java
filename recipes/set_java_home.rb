# set_java_home.rb


directory "/etc/profile.d" do
  mode 00755
end
case node['platform_family']
when "debian" 
file "/etc/profile" do 
	new_lines = "JAVA_HOME=/usr/local/java/jdk1.7.0_51\n
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin\n
export JAVA_HOME\n
export PATH"

only_if do 
	current_content = File.read("/etc/profile")
	current_content.index("JAVA_HOME").nil?
end

  mode 00755
  user "root"
  group "root"
  current_content = File.read("/etc/profile")
  new_content = current_content + new_lines
  content "#{new_content}"
end
when "rhel"
  file "/etc/profile" do 
  new_lines = "JAVA_HOME=/usr/java/jdk1.7.0_51\n
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin\n
export JAVA_HOME\n
export PATH"

only_if do 
  current_content = File.read("/etc/profile")
  current_content.index("JAVA_HOME").nil?
end

  mode 00755
  user "root"
  group "root"
  current_content = File.read("/etc/profile")
  new_content = current_content + new_lines
  content "#{new_content}"
end
end

