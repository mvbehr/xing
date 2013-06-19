require 'spec_helper'

describe Xing::Models::User do

  describe 'user from post.json' do
    let(:data) { fixture_as_json("post.json")['actors'].first }
    let(:instance) { described_class.new data }
    subject {instance}

    its(:name){should == "Test User"}
  end
end