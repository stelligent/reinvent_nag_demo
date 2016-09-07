gem_package 'cfn-nag' do
  version node['cfn_nag']['version']
end

remote_file '/usr/local/bin/jq' do
  source 'https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64'
  mode 0755
end