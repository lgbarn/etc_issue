require 'spec_helper'

describe 'etc_issue' do
  context 'with defaults for all parameters' do
    it { should contain_class('etc_issue') }
    it do
      should contain_file('/etc/issue').with(
        'ensure' => 'file',
        'owner' => 'root',
        'group' => 'root',
        'mode' => '0644',
        'source' => 'puppet:///modules/etc_issue/issue',
    ) end
  end

end
