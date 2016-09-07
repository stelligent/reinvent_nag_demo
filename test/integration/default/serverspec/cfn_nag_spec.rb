require 'serverspec'

describe file('/usr/local/bin/jq') do
  it { should exist }
  it { should be_file }
  it { should be_mode '755' }
end

describe command('jq --version') do
  its(:stdout) { should match /jq\-1\.5/ }
end

describe command('gem list | grep cfn-nag') do
  its(:stdout) { should match /0\.0\.19/ }
end

describe command('cfn_nag --help') do
  its(:stdout) { should match /Options:/ }
end

