require 'serverspec'

describe command('ruby --version') do
  its(:stdout) { should match /2\.3/ }
end
