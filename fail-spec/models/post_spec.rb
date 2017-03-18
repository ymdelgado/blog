# spec/models/post.rb
#
# require 'spec_helper'
require 'rails_helper'

describe Post, :type => :model do



  describe "testing post model" do

    it "belongs to a user" do
      post = Post.reflect_on_association(:user)
      expect(post.macro).to eq(:belongs_to)
    end

    it 'has a valid factory' do
      post = FactoryGirl.build(:post)
      expect(post).to be_valid
    end

    it 'is invalid without a title' do
      post = FactoryGirl.build(:post_invalid)
      expect(post).to respond_to(:title)
    end

    it 'is invalid without a short title' do
      post = FactoryGirl.build(:post_too_short_title)
      #binding.pry
      expect(post).not_to be_valid

    end

  end

end
