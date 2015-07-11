require 'spec_helper'

describe Post do
  describe "creation" do
    it { should validate_presence_of(:title) }
    it { should ensure_length_of(:title).is_at_least(5) }
    it { should validate_presence_of(:content) }
    it { should ensure_length_of(:content).is_at_least(10) }
    context "valid attributes" do

      it "should be valid" do
        post = FactoryGirl.build(:post)

        post.should be_valid
      end

    end

    context "invalid attributes" do

      it "should not be valid" do
        post = FactoryGirl.build(:post, title: "")

        post.should_not be_valid
      end

    end

  end
end
