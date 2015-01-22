require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "AWS CodeDeploy Client" do

  it 'wants to be tested, but cannot' do
    # YAY
  end

  # XXX: We can't actually test this on local...because we don't really install it.
  # describe service('codedeploy-agent') do
  #   it { should be_installed }
  #   it { should be_enabled }
  #   it { should be_running }
  # end

end
