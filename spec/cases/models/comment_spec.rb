require 'spec_helper'
require 'json'

describe Xing::Models::Comment do
  describe 'Comment from post.json' do
    let(:data) { fixture_as_json("post.json")['comments']["latest_comments"].first }
    let(:instance) { described_class.new data }
    subject { instance }

    its(:posted_at) { should == Time.parse(data["created_at"]).utc }

    describe '.user' do
      subject { instance.user }
      it { should be_instance_of(Xing::Models::User) }
      its(:name) { should == "Test User" }
      its(:id) { should == "123456789" }
    end
  end
end