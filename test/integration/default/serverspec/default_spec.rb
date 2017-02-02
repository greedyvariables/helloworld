require 'serverspec'
require 'spec_helper'

describe 'helloworld' do
  cnt = $node['helloworld']['content']
  fi = $node['helloworld']['file']  
    
  describe command("cat #{fi}") do
    #its(:stdout) { should match(/It works!"/) }
    its(:stdout) { should match(/#{cnt}/) }
  end
end
