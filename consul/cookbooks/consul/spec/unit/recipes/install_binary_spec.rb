require 'spec_helper'

describe_recipe 'consul::install_binary' do
  it { expect(chef_run).to include_recipe('ark::default') }
  it do
    expect(chef_run).to dump_ark('consul')
      .with(version: '0.4.0')
      .with(path: '/usr/local/bin')
  end
  it { expect(chef_run).to touch_file('/usr/local/bin/consul') }
end
