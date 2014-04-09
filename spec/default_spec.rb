require 'chefspec'

describe "df_java::default" do 
  let(:chef_run) { ChefSpec::Runner.new.converge('df_java::default')}
  it "includes set_java_home recipe " do 
    expect(chef_run).to include_recipe('df_java::set_java_home')
  end
end
