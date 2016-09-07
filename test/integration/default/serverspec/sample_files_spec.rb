require 'serverspec'

%w(
  ebs_volume_without_server_side_encryption.json
  security_group_without_explicit_egress.json
  ebs_volume_with_server_side_encryption.json
  security_group_with_explicit_egress.json
).each do |cloudformation_json_file|
  describe file("/srv/#{cloudformation_json_file}") do
    it { should exist }
    it { should be_file }
    it { should be_mode '666' }
    its(:size) { should > 0 }
  end
end

describe command('cfn_nag --input-json-path /srv/security_group_without_explicit_egress.json') do
  its(:exit_status) { should eq 1 }
end

describe command('cfn_nag --input-json-path /srv/security_group_with_explicit_egress.json') do
  its(:exit_status) { should eq 0 }
end

describe command('cfn_nag --input-json-path /srv/ebs_volume_without_server_side_encryption.json') do
  its(:exit_status) { should eq 1 }
end

describe command('cfn_nag --input-json-path /srv/ebs_volume_with_server_side_encryption.json') do
  its(:exit_status) { should eq 0 }
end