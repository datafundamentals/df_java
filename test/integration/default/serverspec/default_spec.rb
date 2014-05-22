require 'serverspec' 
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe file('/usr/bin/java') do 
	it {should be_file}
end

describe file("/etc/profile.d/java.sh") do 
	it {should be_file}
end