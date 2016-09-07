
%w(
  ebs_volume_without_server_side_encryption.json
  security_group_without_explicit_egress.json
  ebs_volume_with_server_side_encryption.json
  security_group_with_explicit_egress.json
).each do |cloudformation_json_file|
  cookbook_file "/srv/#{cloudformation_json_file}" do
    source cloudformation_json_file
    mode 0666
  end
end