require_relative '../spec_helper'

describe package('redis-server') do
  it { should be_installed }
end

describe port(6379) do
  it { should be_listening }
  it { should be_listening.with('tcp') }
end

describe process('redis-server') do
  it { should be_running }
end
