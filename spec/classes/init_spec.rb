require 'spec_helper'
describe 'issue_jabil' do

  context 'with defaults for all parameters' do
    it { should contain_class('issue_jabil') }
  end
end
