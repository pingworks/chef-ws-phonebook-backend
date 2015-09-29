require_relative '../spec_helper'

describe file('/etc/phonebook/config.yml') do
  its(:content) { should match /#{$node['ws-phonebook-backend']['shortname']}/ }
end

describe file('/etc/phonebook') do
  it { should be_directory }
  it { should be_mode 755 }
end

describe file('/etc/phonebook/config.yml') do
  it { should exist }
  it { should be_file }
  it { should be_readable }
end
