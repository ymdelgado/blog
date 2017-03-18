
require './rails_helper'

describe Comment, :type => :model do

  describe "testing comment model" do

    it "should has many comments" do
      should belong_to(:commentable)
    end

    it "should add nested comments" do
      com = FactoryGirl::build(:comment)
    end

  end

end
