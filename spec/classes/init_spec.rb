require 'spec_helper'
describe 'etc_issue' do

  context 'with defaults for all parameters' do
    it { should contain_class('etc_issue') }
  end
end
