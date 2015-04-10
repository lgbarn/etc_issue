require 'spec_helper_acceptance'

describe 'etc_issue class' do
  describe 'apply etc_issue module' do
    it 'should apply with no errors' do
      pp = <<-EOS
      class { 'etc_issue': }
      EOS

      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end
  end
  
  describe 'etc_issue class' do
    describe file('/etc/issue') do
      it { should be_file }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'root' }
      it { should be_mode '644' }
      its(:md5sum) { should eq 'a0240515978fec213f8651a60cc18e48' }
    end
  end
  
end
