# default.rb
override['java']['jdk_version']= 8
override['java']['oracle']['accept_oracle_download_terms'] = true
override['java']['install_flavor'] = 'oracle'

# case node['platform_family']
# 	when "debian"
# 		default['java']['path'] = "JAVA_HOME=/usr/local/java/jdk1.7.0_51\n
# PATH=$PATH:$HOME/bin:$JAVA_HOME/bin\n
# export JAVA_HOME\n
# export PATH"
# 	when "rhel"
# 		default['java']['path'] = "JAVA_HOME=/usr/java/jdk1.7.0_51\n
# PATH=$PATH:$HOME/bin:$JAVA_HOME/bin\n
# export JAVA_HOME\n
# export PATH"
# 	end