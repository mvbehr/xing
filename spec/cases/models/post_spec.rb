require 'spec_helper'

describe Xing::Models::Post do

  describe 'post.json' do
    let(:data) { fixture_as_json("post.json") }
    let(:instance) { described_class.new data }
    subject { instance }

    its(:posted_at) {should == Time.parse(data["created_at"]).utc}
    its(:commentable){should be_true}
    its(:likeable){should be_true}
    its(:liked){should be_false}
    its(:sharable){should be_false}
    its(:deletable){should be_false}
    its(:like_count){should == 0}

    describe 'activities' do
      subject {instance.activities}
      it{should be_instance_of(Array)}
    end

    describe 'comments' do
      subject {instance.comments}
      it{should be_instance_of(Array)}
      its(:size){should == 1}
      its(:first){should be_instance_of(Xing::Models::Comment)}
    end

    describe 'user' do
      subject {instance.user}
      it {should be_instance_of(Xing::Models::User)}
      its(:name){should == "Test User"}
      its(:id){should == "123456789"}
    end
  end
end